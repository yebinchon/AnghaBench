; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_getopt.c_badopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_getopt.c_badopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ntp_opterr = common dso_local global i64 0, align 8
@prog = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @badopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @badopt(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* @ntp_opterr, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load i8*, i8** @prog, align 8
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fputs(i8* %8, i32 %9)
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @fputs(i8* %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = trunc i32 %14 to i8
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @putc(i8 signext %15, i32 %16)
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @putc(i8 signext 10, i32 %18)
  br label %20

20:                                               ; preds = %7, %2
  ret i32 63
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @putc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
