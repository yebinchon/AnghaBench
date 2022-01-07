; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_pnp.c_pnp_freeinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_pnp.c_pnp_freeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnpinfo = type { %struct.pnpinfo*, %struct.pnpinfo*, %struct.pnpinfo*, %struct.pnpinfo*, i32 }
%struct.pnpident = type { %struct.pnpident*, %struct.pnpident*, %struct.pnpident*, %struct.pnpident*, i32 }

@id_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnp_freeinfo(%struct.pnpinfo* %0) #0 {
  %2 = alloca %struct.pnpinfo*, align 8
  %3 = alloca %struct.pnpident*, align 8
  store %struct.pnpinfo* %0, %struct.pnpinfo** %2, align 8
  br label %4

4:                                                ; preds = %10, %1
  %5 = load %struct.pnpinfo*, %struct.pnpinfo** %2, align 8
  %6 = getelementptr inbounds %struct.pnpinfo, %struct.pnpinfo* %5, i32 0, i32 4
  %7 = call i32 @STAILQ_EMPTY(i32* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %27

10:                                               ; preds = %4
  %11 = load %struct.pnpinfo*, %struct.pnpinfo** %2, align 8
  %12 = getelementptr inbounds %struct.pnpinfo, %struct.pnpinfo* %11, i32 0, i32 4
  %13 = call %struct.pnpinfo* @STAILQ_FIRST(i32* %12)
  %14 = bitcast %struct.pnpinfo* %13 to %struct.pnpident*
  store %struct.pnpident* %14, %struct.pnpident** %3, align 8
  %15 = load %struct.pnpinfo*, %struct.pnpinfo** %2, align 8
  %16 = getelementptr inbounds %struct.pnpinfo, %struct.pnpinfo* %15, i32 0, i32 4
  %17 = load i32, i32* @id_link, align 4
  %18 = call i32 @STAILQ_REMOVE_HEAD(i32* %16, i32 %17)
  %19 = load %struct.pnpident*, %struct.pnpident** %3, align 8
  %20 = getelementptr inbounds %struct.pnpident, %struct.pnpident* %19, i32 0, i32 3
  %21 = load %struct.pnpident*, %struct.pnpident** %20, align 8
  %22 = bitcast %struct.pnpident* %21 to %struct.pnpinfo*
  %23 = call i32 @free(%struct.pnpinfo* %22)
  %24 = load %struct.pnpident*, %struct.pnpident** %3, align 8
  %25 = bitcast %struct.pnpident* %24 to %struct.pnpinfo*
  %26 = call i32 @free(%struct.pnpinfo* %25)
  br label %4

27:                                               ; preds = %4
  %28 = load %struct.pnpinfo*, %struct.pnpinfo** %2, align 8
  %29 = getelementptr inbounds %struct.pnpinfo, %struct.pnpinfo* %28, i32 0, i32 2
  %30 = load %struct.pnpinfo*, %struct.pnpinfo** %29, align 8
  %31 = icmp ne %struct.pnpinfo* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.pnpinfo*, %struct.pnpinfo** %2, align 8
  %34 = getelementptr inbounds %struct.pnpinfo, %struct.pnpinfo* %33, i32 0, i32 2
  %35 = load %struct.pnpinfo*, %struct.pnpinfo** %34, align 8
  %36 = call i32 @free(%struct.pnpinfo* %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.pnpinfo*, %struct.pnpinfo** %2, align 8
  %39 = getelementptr inbounds %struct.pnpinfo, %struct.pnpinfo* %38, i32 0, i32 1
  %40 = load %struct.pnpinfo*, %struct.pnpinfo** %39, align 8
  %41 = icmp ne %struct.pnpinfo* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.pnpinfo*, %struct.pnpinfo** %2, align 8
  %44 = getelementptr inbounds %struct.pnpinfo, %struct.pnpinfo* %43, i32 0, i32 1
  %45 = load %struct.pnpinfo*, %struct.pnpinfo** %44, align 8
  %46 = call i32 @free(%struct.pnpinfo* %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.pnpinfo*, %struct.pnpinfo** %2, align 8
  %49 = getelementptr inbounds %struct.pnpinfo, %struct.pnpinfo* %48, i32 0, i32 0
  %50 = load %struct.pnpinfo*, %struct.pnpinfo** %49, align 8
  %51 = icmp ne %struct.pnpinfo* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.pnpinfo*, %struct.pnpinfo** %2, align 8
  %54 = getelementptr inbounds %struct.pnpinfo, %struct.pnpinfo* %53, i32 0, i32 0
  %55 = load %struct.pnpinfo*, %struct.pnpinfo** %54, align 8
  %56 = call i32 @free(%struct.pnpinfo* %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.pnpinfo*, %struct.pnpinfo** %2, align 8
  %59 = call i32 @free(%struct.pnpinfo* %58)
  ret void
}

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local %struct.pnpinfo* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @free(%struct.pnpinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
