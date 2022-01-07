; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_set_logif.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_set_logif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfctl = type { i32, i32, i32* }

@loadopt = common dso_local global i32 0, align 4
@PFCTL_FLAG_OPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"pfctl_set_logif: strdup\00", align 1
@PF_OPT_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"set loginterface %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_set_logif(%struct.pfctl* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pfctl*, align 8
  %5 = alloca i8*, align 8
  store %struct.pfctl* %0, %struct.pfctl** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* @loadopt, align 4
  %7 = load i32, i32* @PFCTL_FLAG_OPTION, align 4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load %struct.pfctl*, %struct.pfctl** %4, align 8
  %17 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @free(i32* %18)
  %20 = load %struct.pfctl*, %struct.pfctl** %4, align 8
  %21 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  br label %34

22:                                               ; preds = %11
  %23 = load i8*, i8** %5, align 8
  %24 = call i32* @strdup(i8* %23)
  %25 = load %struct.pfctl*, %struct.pfctl** %4, align 8
  %26 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = load %struct.pfctl*, %struct.pfctl** %4, align 8
  %28 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %22
  %32 = call i32 @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %22
  br label %34

34:                                               ; preds = %33, %15
  %35 = load %struct.pfctl*, %struct.pfctl** %4, align 8
  %36 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.pfctl*, %struct.pfctl** %4, align 8
  %38 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PF_OPT_VERBOSE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %34
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %10
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
