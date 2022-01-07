; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_coord.c_coord_link_establish_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_coord.c_coord_link_establish_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.uni*, i32, i32, i32, i32*)*, i32 (%struct.uni*, i32, i32, i32*)* }

@SAAL_ESTABLISH_request = common dso_local global i32 0, align 4
@t309 = common dso_local global i32 0, align 4
@UNIAPI_OK = common dso_local global i32 0, align 4
@SIGO_LINK_ESTABLISH_request = common dso_local global i32 0, align 4
@UNIAPI_ERROR_BAD_CALLSTATE = common dso_local global i32 0, align 4
@UNI_FAC_COORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"signal link-establish.request in CU%u\00", align 1
@UNIAPI_LINK_ESTABLISH_confirm = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"CU_STAT*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uni*, i32)* @coord_link_establish_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coord_link_establish_request(%struct.uni* %0, i32 %1) #0 {
  %3 = alloca %struct.uni*, align 8
  %4 = alloca i32, align 4
  store %struct.uni* %0, %struct.uni** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.uni*, %struct.uni** %3, align 8
  %6 = getelementptr inbounds %struct.uni, %struct.uni* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %78 [
    i32 131, label %8
    i32 130, label %42
    i32 129, label %47
    i32 128, label %62
  ]

8:                                                ; preds = %2
  %9 = load %struct.uni*, %struct.uni** %3, align 8
  %10 = getelementptr inbounds %struct.uni, %struct.uni* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32 (%struct.uni*, i32, i32, i32*)*, i32 (%struct.uni*, i32, i32, i32*)** %12, align 8
  %14 = load %struct.uni*, %struct.uni** %3, align 8
  %15 = load %struct.uni*, %struct.uni** %3, align 8
  %16 = getelementptr inbounds %struct.uni, %struct.uni* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SAAL_ESTABLISH_request, align 4
  %19 = call i32 %13(%struct.uni* %14, i32 %17, i32 %18, i32* null)
  %20 = load %struct.uni*, %struct.uni** %3, align 8
  %21 = load i32, i32* @t309, align 4
  %22 = call i32 @TIMER_ISACT(%struct.uni* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %8
  %25 = load %struct.uni*, %struct.uni** %3, align 8
  %26 = load i32, i32* @t309, align 4
  %27 = load %struct.uni*, %struct.uni** %3, align 8
  %28 = getelementptr inbounds %struct.uni, %struct.uni* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @TIMER_START_UNI(%struct.uni* %25, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %24, %8
  %32 = load %struct.uni*, %struct.uni** %3, align 8
  %33 = call i32 @set_custat(%struct.uni* %32, i32 130)
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.uni*, %struct.uni** %3, align 8
  %38 = load i32, i32* @UNIAPI_OK, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @uniapi_uni_error(%struct.uni* %37, i32 %38, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %36, %31
  br label %80

42:                                               ; preds = %2
  %43 = load %struct.uni*, %struct.uni** %3, align 8
  %44 = load i32, i32* @SIGO_LINK_ESTABLISH_request, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @uni_delenq_coord(%struct.uni* %43, i32 %44, i32 %45, i32* null)
  br label %80

47:                                               ; preds = %2
  %48 = load %struct.uni*, %struct.uni** %3, align 8
  %49 = load i32, i32* @UNIAPI_ERROR_BAD_CALLSTATE, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @uniapi_uni_error(%struct.uni* %48, i32 %49, i32 %50, i32 0)
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load %struct.uni*, %struct.uni** %3, align 8
  %56 = load i32, i32* @UNI_FAC_COORD, align 4
  %57 = load %struct.uni*, %struct.uni** %3, align 8
  %58 = getelementptr inbounds %struct.uni, %struct.uni* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @VERBOSE0(%struct.uni* %55, i32 %56, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %54, %47
  br label %80

62:                                               ; preds = %2
  %63 = load %struct.uni*, %struct.uni** %3, align 8
  %64 = getelementptr inbounds %struct.uni, %struct.uni* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32 (%struct.uni*, i32, i32, i32, i32*)*, i32 (%struct.uni*, i32, i32, i32, i32*)** %66, align 8
  %68 = load %struct.uni*, %struct.uni** %3, align 8
  %69 = load %struct.uni*, %struct.uni** %3, align 8
  %70 = getelementptr inbounds %struct.uni, %struct.uni* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @UNIAPI_LINK_ESTABLISH_confirm, align 4
  %73 = call i32 %67(%struct.uni* %68, i32 %71, i32 %72, i32 0, i32* null)
  %74 = load %struct.uni*, %struct.uni** %3, align 8
  %75 = load i32, i32* @UNIAPI_OK, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @uniapi_uni_error(%struct.uni* %74, i32 %75, i32 %76, i32 0)
  br label %80

78:                                               ; preds = %2
  %79 = call i32 @ASSERT(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %62, %61, %42, %41
  ret void
}

declare dso_local i32 @TIMER_ISACT(%struct.uni*, i32) #1

declare dso_local i32 @TIMER_START_UNI(%struct.uni*, i32, i32) #1

declare dso_local i32 @set_custat(%struct.uni*, i32) #1

declare dso_local i32 @uniapi_uni_error(%struct.uni*, i32, i32, i32) #1

declare dso_local i32 @uni_delenq_coord(%struct.uni*, i32, i32, i32*) #1

declare dso_local i32 @VERBOSE0(%struct.uni*, i32, i8*, i32) #1

declare dso_local i32 @ASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
