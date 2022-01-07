; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_uni.c_uni_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_uni.c_uni_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i8*, %struct.uni_funcs* }
%struct.uni_funcs = type { i32 }

@UNIPROTO_UNI40U = common dso_local global i32 0, align 4
@t309 = common dso_local global i32 0, align 4
@UNI_T309_DEFAULT = common dso_local global i32 0, align 4
@t317 = common dso_local global i32 0, align 4
@t316 = common dso_local global i32 0, align 4
@UNI_T301_DEFAULT = common dso_local global i32 0, align 4
@UNI_T303_CNT_DEFAULT = common dso_local global i32 0, align 4
@UNI_T303_DEFAULT = common dso_local global i32 0, align 4
@UNI_T308_CNT_DEFAULT = common dso_local global i32 0, align 4
@UNI_T308_DEFAULT = common dso_local global i32 0, align 4
@UNI_T310U_DEFAULT = common dso_local global i32 0, align 4
@UNI_T313_DEFAULT = common dso_local global i32 0, align 4
@UNI_T316_CNT_DEFAULT = common dso_local global i32 0, align 4
@UNI_T316_DEFAULT = common dso_local global i32 0, align 4
@UNI_T317_DEFAULT = common dso_local global i32 0, align 4
@UNI_T322_DEFAULT = common dso_local global i32 0, align 4
@UNI_T322_CNT_DEFAULT = common dso_local global i32 0, align 4
@UNI_T397_DEFAULT = common dso_local global i32 0, align 4
@UNI_T398_DEFAULT = common dso_local global i32 0, align 4
@UNI_T399U_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.uni* @uni_create(i8* %0, %struct.uni_funcs* %1) #0 {
  %3 = alloca %struct.uni*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uni_funcs*, align 8
  %6 = alloca %struct.uni*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.uni_funcs* %1, %struct.uni_funcs** %5, align 8
  %7 = call %struct.uni* (...) @INS_ALLOC()
  store %struct.uni* %7, %struct.uni** %6, align 8
  %8 = icmp eq %struct.uni* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.uni* null, %struct.uni** %3, align 8
  br label %94

10:                                               ; preds = %2
  %11 = load %struct.uni*, %struct.uni** %6, align 8
  %12 = call i32 @uni_init(%struct.uni* %11)
  %13 = load %struct.uni_funcs*, %struct.uni_funcs** %5, align 8
  %14 = load %struct.uni*, %struct.uni** %6, align 8
  %15 = getelementptr inbounds %struct.uni, %struct.uni* %14, i32 0, i32 23
  store %struct.uni_funcs* %13, %struct.uni_funcs** %15, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load %struct.uni*, %struct.uni** %6, align 8
  %18 = getelementptr inbounds %struct.uni, %struct.uni* %17, i32 0, i32 22
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* @UNIPROTO_UNI40U, align 4
  %20 = load %struct.uni*, %struct.uni** %6, align 8
  %21 = getelementptr inbounds %struct.uni, %struct.uni* %20, i32 0, i32 21
  store i32 %19, i32* %21, align 8
  %22 = load %struct.uni*, %struct.uni** %6, align 8
  %23 = getelementptr inbounds %struct.uni, %struct.uni* %22, i32 0, i32 20
  store i64 0, i64* %23, align 8
  %24 = load %struct.uni*, %struct.uni** %6, align 8
  %25 = getelementptr inbounds %struct.uni, %struct.uni* %24, i32 0, i32 19
  %26 = call i32 @TAILQ_INIT(i32* %25)
  %27 = load %struct.uni*, %struct.uni** %6, align 8
  %28 = getelementptr inbounds %struct.uni, %struct.uni* %27, i32 0, i32 18
  %29 = call i32 @TAILQ_INIT(i32* %28)
  %30 = load %struct.uni*, %struct.uni** %6, align 8
  %31 = load i32, i32* @t309, align 4
  %32 = call i32 @TIMER_INIT_UNI(%struct.uni* %30, i32 %31)
  %33 = load i32, i32* @UNI_T309_DEFAULT, align 4
  %34 = load %struct.uni*, %struct.uni** %6, align 8
  %35 = getelementptr inbounds %struct.uni, %struct.uni* %34, i32 0, i32 17
  store i32 %33, i32* %35, align 4
  %36 = load %struct.uni*, %struct.uni** %6, align 8
  %37 = getelementptr inbounds %struct.uni, %struct.uni* %36, i32 0, i32 16
  %38 = call i32 @TAILQ_INIT(i32* %37)
  %39 = load %struct.uni*, %struct.uni** %6, align 8
  %40 = getelementptr inbounds %struct.uni, %struct.uni* %39, i32 0, i32 15
  %41 = call i32 @uni_initcx(i32* %40)
  %42 = load %struct.uni*, %struct.uni** %6, align 8
  %43 = load i32, i32* @t317, align 4
  %44 = call i32 @TIMER_INIT_UNI(%struct.uni* %42, i32 %43)
  %45 = load %struct.uni*, %struct.uni** %6, align 8
  %46 = load i32, i32* @t316, align 4
  %47 = call i32 @TIMER_INIT_UNI(%struct.uni* %45, i32 %46)
  %48 = load i32, i32* @UNI_T301_DEFAULT, align 4
  %49 = load %struct.uni*, %struct.uni** %6, align 8
  %50 = getelementptr inbounds %struct.uni, %struct.uni* %49, i32 0, i32 14
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @UNI_T303_CNT_DEFAULT, align 4
  %52 = load %struct.uni*, %struct.uni** %6, align 8
  %53 = getelementptr inbounds %struct.uni, %struct.uni* %52, i32 0, i32 13
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @UNI_T303_DEFAULT, align 4
  %55 = load %struct.uni*, %struct.uni** %6, align 8
  %56 = getelementptr inbounds %struct.uni, %struct.uni* %55, i32 0, i32 12
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @UNI_T308_CNT_DEFAULT, align 4
  %58 = load %struct.uni*, %struct.uni** %6, align 8
  %59 = getelementptr inbounds %struct.uni, %struct.uni* %58, i32 0, i32 11
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @UNI_T308_DEFAULT, align 4
  %61 = load %struct.uni*, %struct.uni** %6, align 8
  %62 = getelementptr inbounds %struct.uni, %struct.uni* %61, i32 0, i32 10
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @UNI_T310U_DEFAULT, align 4
  %64 = load %struct.uni*, %struct.uni** %6, align 8
  %65 = getelementptr inbounds %struct.uni, %struct.uni* %64, i32 0, i32 9
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @UNI_T313_DEFAULT, align 4
  %67 = load %struct.uni*, %struct.uni** %6, align 8
  %68 = getelementptr inbounds %struct.uni, %struct.uni* %67, i32 0, i32 8
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @UNI_T316_CNT_DEFAULT, align 4
  %70 = load %struct.uni*, %struct.uni** %6, align 8
  %71 = getelementptr inbounds %struct.uni, %struct.uni* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @UNI_T316_DEFAULT, align 4
  %73 = load %struct.uni*, %struct.uni** %6, align 8
  %74 = getelementptr inbounds %struct.uni, %struct.uni* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @UNI_T317_DEFAULT, align 4
  %76 = load %struct.uni*, %struct.uni** %6, align 8
  %77 = getelementptr inbounds %struct.uni, %struct.uni* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @UNI_T322_DEFAULT, align 4
  %79 = load %struct.uni*, %struct.uni** %6, align 8
  %80 = getelementptr inbounds %struct.uni, %struct.uni* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @UNI_T322_CNT_DEFAULT, align 4
  %82 = load %struct.uni*, %struct.uni** %6, align 8
  %83 = getelementptr inbounds %struct.uni, %struct.uni* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @UNI_T397_DEFAULT, align 4
  %85 = load %struct.uni*, %struct.uni** %6, align 8
  %86 = getelementptr inbounds %struct.uni, %struct.uni* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @UNI_T398_DEFAULT, align 4
  %88 = load %struct.uni*, %struct.uni** %6, align 8
  %89 = getelementptr inbounds %struct.uni, %struct.uni* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @UNI_T399U_DEFAULT, align 4
  %91 = load %struct.uni*, %struct.uni** %6, align 8
  %92 = getelementptr inbounds %struct.uni, %struct.uni* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.uni*, %struct.uni** %6, align 8
  store %struct.uni* %93, %struct.uni** %3, align 8
  br label %94

94:                                               ; preds = %10, %9
  %95 = load %struct.uni*, %struct.uni** %3, align 8
  ret %struct.uni* %95
}

declare dso_local %struct.uni* @INS_ALLOC(...) #1

declare dso_local i32 @uni_init(%struct.uni*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TIMER_INIT_UNI(%struct.uni*, i32) #1

declare dso_local i32 @uni_initcx(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
