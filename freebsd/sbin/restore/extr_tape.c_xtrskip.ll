; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_xtrskip.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_xtrskip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@ofile = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"seek error extracting inode %ju, name %s\0Alseek: %s\0A\00", align 1
@curfile = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xtrskip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xtrskip(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @ofile, align 4
  %6 = load i64, i64* %4, align 8
  %7 = load i32, i32* @SEEK_CUR, align 4
  %8 = call i32 @lseek(i32 %5, i64 %6, i32 %7)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 1), align 8
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 8
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @strerror(i32 %15)
  %17 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %16)
  %18 = call i32 @done(i32 1)
  br label %19

19:                                               ; preds = %10, %2
  ret void
}

declare dso_local i32 @lseek(i32, i64, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
