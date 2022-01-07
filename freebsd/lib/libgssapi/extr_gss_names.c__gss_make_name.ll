; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_names.c__gss_make_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_names.c__gss_make_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._gss_name = type { i32 }
%struct._gss_mech_switch = type { i32 }
%struct._gss_mechanism_name = type { i32, i32*, %struct._gss_mech_switch* }

@gmn_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._gss_name* @_gss_make_name(%struct._gss_mech_switch* %0, i32 %1) #0 {
  %3 = alloca %struct._gss_name*, align 8
  %4 = alloca %struct._gss_mech_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._gss_name*, align 8
  %7 = alloca %struct._gss_mechanism_name*, align 8
  store %struct._gss_mech_switch* %0, %struct._gss_mech_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i8* @malloc(i32 4)
  %9 = bitcast i8* %8 to %struct._gss_name*
  store %struct._gss_name* %9, %struct._gss_name** %6, align 8
  %10 = load %struct._gss_name*, %struct._gss_name** %6, align 8
  %11 = icmp ne %struct._gss_name* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct._gss_name* null, %struct._gss_name** %3, align 8
  br label %43

13:                                               ; preds = %2
  %14 = load %struct._gss_name*, %struct._gss_name** %6, align 8
  %15 = call i32 @memset(%struct._gss_name* %14, i32 0, i32 4)
  %16 = call i8* @malloc(i32 24)
  %17 = bitcast i8* %16 to %struct._gss_mechanism_name*
  store %struct._gss_mechanism_name* %17, %struct._gss_mechanism_name** %7, align 8
  %18 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %7, align 8
  %19 = icmp ne %struct._gss_mechanism_name* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load %struct._gss_name*, %struct._gss_name** %6, align 8
  %22 = call i32 @free(%struct._gss_name* %21)
  store %struct._gss_name* null, %struct._gss_name** %3, align 8
  br label %43

23:                                               ; preds = %13
  %24 = load %struct._gss_name*, %struct._gss_name** %6, align 8
  %25 = getelementptr inbounds %struct._gss_name, %struct._gss_name* %24, i32 0, i32 0
  %26 = call i32 @SLIST_INIT(i32* %25)
  %27 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %4, align 8
  %28 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %7, align 8
  %29 = getelementptr inbounds %struct._gss_mechanism_name, %struct._gss_mechanism_name* %28, i32 0, i32 2
  store %struct._gss_mech_switch* %27, %struct._gss_mech_switch** %29, align 8
  %30 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %4, align 8
  %31 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %30, i32 0, i32 0
  %32 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %7, align 8
  %33 = getelementptr inbounds %struct._gss_mechanism_name, %struct._gss_mechanism_name* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %7, align 8
  %36 = getelementptr inbounds %struct._gss_mechanism_name, %struct._gss_mechanism_name* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct._gss_name*, %struct._gss_name** %6, align 8
  %38 = getelementptr inbounds %struct._gss_name, %struct._gss_name* %37, i32 0, i32 0
  %39 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %7, align 8
  %40 = load i32, i32* @gmn_link, align 4
  %41 = call i32 @SLIST_INSERT_HEAD(i32* %38, %struct._gss_mechanism_name* %39, i32 %40)
  %42 = load %struct._gss_name*, %struct._gss_name** %6, align 8
  store %struct._gss_name* %42, %struct._gss_name** %3, align 8
  br label %43

43:                                               ; preds = %23, %20, %12
  %44 = load %struct._gss_name*, %struct._gss_name** %3, align 8
  ret %struct._gss_name* %44
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(%struct._gss_name*, i32, i32) #1

declare dso_local i32 @free(%struct._gss_name*) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct._gss_mechanism_name*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
