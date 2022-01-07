; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_coord.c_coord_saal_release_indication.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_coord.c_coord_saal_release_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni = type { i32 }

@UNI_FAC_COORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"signal saal_release.indication in CU%u\00", align 1
@SIGC_LINK_RELEASE_indication = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"CU_STAT*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uni*)* @coord_saal_release_indication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coord_saal_release_indication(%struct.uni* %0) #0 {
  %2 = alloca %struct.uni*, align 8
  store %struct.uni* %0, %struct.uni** %2, align 8
  %3 = load %struct.uni*, %struct.uni** %2, align 8
  %4 = getelementptr inbounds %struct.uni, %struct.uni* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %19 [
    i32 131, label %6
    i32 129, label %6
    i32 130, label %13
    i32 128, label %13
  ]

6:                                                ; preds = %1, %1
  %7 = load %struct.uni*, %struct.uni** %2, align 8
  %8 = load i32, i32* @UNI_FAC_COORD, align 4
  %9 = load %struct.uni*, %struct.uni** %2, align 8
  %10 = getelementptr inbounds %struct.uni, %struct.uni* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @VERBOSE0(%struct.uni* %7, i32 %8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %21

13:                                               ; preds = %1, %1
  %14 = load %struct.uni*, %struct.uni** %2, align 8
  %15 = load i32, i32* @SIGC_LINK_RELEASE_indication, align 4
  %16 = call i32 @sig_all_calls(%struct.uni* %14, i32 %15)
  %17 = load %struct.uni*, %struct.uni** %2, align 8
  %18 = call i32 @set_custat(%struct.uni* %17, i32 131)
  br label %21

19:                                               ; preds = %1
  %20 = call i32 @ASSERT(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %13, %6
  ret void
}

declare dso_local i32 @VERBOSE0(%struct.uni*, i32, i8*, i32) #1

declare dso_local i32 @sig_all_calls(%struct.uni*, i32) #1

declare dso_local i32 @set_custat(%struct.uni*, i32) #1

declare dso_local i32 @ASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
