; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_xtrattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_xtrattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@extloc = common dso_local global i64 0, align 8
@extbufsize = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"overrun attribute buffer\0A\00", align 1
@extbuf = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xtrattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xtrattr(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* @extloc, align 8
  %6 = load i64, i64* %4, align 8
  %7 = add i64 %5, %6
  %8 = load i64, i64* @extbufsize, align 8
  %9 = icmp ugt i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32*, i32** @extbuf, align 8
  %14 = load i64, i64* @extloc, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i8*, i8** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @memmove(i32* %15, i8* %16, i64 %17)
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @extloc, align 8
  %21 = add i64 %20, %19
  store i64 %21, i64* @extloc, align 8
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @memmove(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
