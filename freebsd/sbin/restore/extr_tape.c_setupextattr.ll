; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_setupextattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_setupextattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@extloc = common dso_local global i64 0, align 8
@extbufsize = common dso_local global i32 0, align 4
@extbuf = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Cannot extract %d bytes %s for inode %ju, name %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"of extended attributes\00", align 1
@curfile = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @setupextattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @setupextattr(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 0, i64* @extloc, align 8
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @extbufsize, align 4
  %6 = icmp sle i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i8*, i8** @extbuf, align 8
  store i8* %8, i8** %2, align 8
  br label %29

9:                                                ; preds = %1
  %10 = load i32, i32* @extbufsize, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i8*, i8** @extbuf, align 8
  %14 = call i32 @free(i8* %13)
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i32, i32* %3, align 4
  %17 = call i8* @malloc(i32 %16)
  store i8* %17, i8** @extbuf, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* @extbufsize, align 4
  %21 = load i8*, i8** @extbuf, align 8
  store i8* %21, i8** %2, align 8
  br label %29

22:                                               ; preds = %15
  store i32 0, i32* @extbufsize, align 4
  store i8* null, i8** @extbuf, align 8
  %23 = load i32, i32* @stderr, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 1), align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 8
  %28 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27)
  store i8* null, i8** %2, align 8
  br label %29

29:                                               ; preds = %22, %19, %7
  %30 = load i8*, i8** %2, align 8
  ret i8* %30
}

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
