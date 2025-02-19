; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/veriexec/extr_veriexec.c_veriexec_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/veriexec/extr_veriexec.c_veriexec_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VEF_VERBOSE = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"cannot verify %s\00", align 1
@EX_NOINPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cannot load %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @veriexec_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @veriexec_load(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = load i32, i32* @VEF_VERBOSE, align 4
  %7 = call i8* @verify_signed(i8* %5, i32 %6)
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EX_USAGE, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @errx(i32 %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load i8*, i8** %2, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @manifest_open(i8* %15, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 (...) @yyparse()
  store i32 %20, i32* %4, align 4
  br label %25

21:                                               ; preds = %14
  %22 = load i32, i32* @EX_NOINPUT, align 4
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @err(i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %21, %19
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @free(i8* %26)
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i8* @verify_signed(i8*, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i64 @manifest_open(i8*, i8*) #1

declare dso_local i32 @yyparse(...) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
