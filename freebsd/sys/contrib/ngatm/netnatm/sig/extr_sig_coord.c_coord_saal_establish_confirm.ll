; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_coord.c_coord_saal_establish_confirm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_coord.c_coord_saal_establish_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.uni*, i32, i32, i32, i32*)* }

@UNI_FAC_COORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"signal saal_establish.confirm in CU%u\00", align 1
@t309 = common dso_local global i32 0, align 4
@SIGC_LINK_ESTABLISH_confirm = common dso_local global i32 0, align 4
@UNIAPI_LINK_ESTABLISH_confirm = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"CU_STAT*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uni*)* @coord_saal_establish_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coord_saal_establish_confirm(%struct.uni* %0) #0 {
  %2 = alloca %struct.uni*, align 8
  store %struct.uni* %0, %struct.uni** %2, align 8
  %3 = load %struct.uni*, %struct.uni** %2, align 8
  %4 = getelementptr inbounds %struct.uni, %struct.uni* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %48 [
    i32 131, label %6
    i32 129, label %6
    i32 130, label %13
    i32 128, label %33
  ]

6:                                                ; preds = %1, %1
  %7 = load %struct.uni*, %struct.uni** %2, align 8
  %8 = load i32, i32* @UNI_FAC_COORD, align 4
  %9 = load %struct.uni*, %struct.uni** %2, align 8
  %10 = getelementptr inbounds %struct.uni, %struct.uni* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @VERBOSE0(%struct.uni* %7, i32 %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.uni*, %struct.uni** %2, align 8
  %15 = load i32, i32* @t309, align 4
  %16 = call i32 @TIMER_STOP_UNI(%struct.uni* %14, i32 %15)
  %17 = load %struct.uni*, %struct.uni** %2, align 8
  %18 = load i32, i32* @SIGC_LINK_ESTABLISH_confirm, align 4
  %19 = call i32 @sig_all_calls(%struct.uni* %17, i32 %18)
  %20 = load %struct.uni*, %struct.uni** %2, align 8
  %21 = getelementptr inbounds %struct.uni, %struct.uni* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.uni*, i32, i32, i32, i32*)*, i32 (%struct.uni*, i32, i32, i32, i32*)** %23, align 8
  %25 = load %struct.uni*, %struct.uni** %2, align 8
  %26 = load %struct.uni*, %struct.uni** %2, align 8
  %27 = getelementptr inbounds %struct.uni, %struct.uni* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @UNIAPI_LINK_ESTABLISH_confirm, align 4
  %30 = call i32 %24(%struct.uni* %25, i32 %28, i32 %29, i32 0, i32* null)
  %31 = load %struct.uni*, %struct.uni** %2, align 8
  %32 = call i32 @set_custat(%struct.uni* %31, i32 128)
  br label %50

33:                                               ; preds = %1
  %34 = load %struct.uni*, %struct.uni** %2, align 8
  %35 = load i32, i32* @SIGC_LINK_ESTABLISH_confirm, align 4
  %36 = call i32 @sig_all_calls(%struct.uni* %34, i32 %35)
  %37 = load %struct.uni*, %struct.uni** %2, align 8
  %38 = getelementptr inbounds %struct.uni, %struct.uni* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.uni*, i32, i32, i32, i32*)*, i32 (%struct.uni*, i32, i32, i32, i32*)** %40, align 8
  %42 = load %struct.uni*, %struct.uni** %2, align 8
  %43 = load %struct.uni*, %struct.uni** %2, align 8
  %44 = getelementptr inbounds %struct.uni, %struct.uni* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @UNIAPI_LINK_ESTABLISH_confirm, align 4
  %47 = call i32 %41(%struct.uni* %42, i32 %45, i32 %46, i32 0, i32* null)
  br label %50

48:                                               ; preds = %1
  %49 = call i32 @ASSERT(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %33, %13, %6
  ret void
}

declare dso_local i32 @VERBOSE0(%struct.uni*, i32, i8*, i32) #1

declare dso_local i32 @TIMER_STOP_UNI(%struct.uni*, i32) #1

declare dso_local i32 @sig_all_calls(%struct.uni*, i32) #1

declare dso_local i32 @set_custat(%struct.uni*, i32) #1

declare dso_local i32 @ASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
