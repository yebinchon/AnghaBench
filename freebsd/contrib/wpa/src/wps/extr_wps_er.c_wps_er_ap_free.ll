; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er_ap = type { %struct.wps_er_ap*, %struct.wps_er_ap*, %struct.wps_er_ap*, %struct.wps_er_ap*, %struct.wps_er_ap*, %struct.wps_er_ap*, %struct.wps_er_ap*, %struct.wps_er_ap*, %struct.wps_er_ap*, %struct.wps_er_ap*, %struct.wps_er_ap*, %struct.wps_er_ap*, %struct.wps_er_ap*, %struct.wps_er_ap*, %struct.wps_er_ap*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_er_ap*)* @wps_er_ap_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_ap_free(%struct.wps_er_ap* %0) #0 {
  %2 = alloca %struct.wps_er_ap*, align 8
  store %struct.wps_er_ap* %0, %struct.wps_er_ap** %2, align 8
  %3 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %4 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %3, i32 0, i32 15
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @http_client_free(i32* %5)
  %7 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %8 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %7, i32 0, i32 15
  store i32* null, i32** %8, align 8
  %9 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %10 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %9, i32 0, i32 14
  %11 = load %struct.wps_er_ap*, %struct.wps_er_ap** %10, align 8
  %12 = call i32 @os_free(%struct.wps_er_ap* %11)
  %13 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %14 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %13, i32 0, i32 13
  %15 = load %struct.wps_er_ap*, %struct.wps_er_ap** %14, align 8
  %16 = call i32 @os_free(%struct.wps_er_ap* %15)
  %17 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %18 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %17, i32 0, i32 12
  %19 = load %struct.wps_er_ap*, %struct.wps_er_ap** %18, align 8
  %20 = call i32 @os_free(%struct.wps_er_ap* %19)
  %21 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %22 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %21, i32 0, i32 11
  %23 = load %struct.wps_er_ap*, %struct.wps_er_ap** %22, align 8
  %24 = call i32 @os_free(%struct.wps_er_ap* %23)
  %25 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %26 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %25, i32 0, i32 10
  %27 = load %struct.wps_er_ap*, %struct.wps_er_ap** %26, align 8
  %28 = call i32 @os_free(%struct.wps_er_ap* %27)
  %29 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %30 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %29, i32 0, i32 9
  %31 = load %struct.wps_er_ap*, %struct.wps_er_ap** %30, align 8
  %32 = call i32 @os_free(%struct.wps_er_ap* %31)
  %33 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %34 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %33, i32 0, i32 8
  %35 = load %struct.wps_er_ap*, %struct.wps_er_ap** %34, align 8
  %36 = call i32 @os_free(%struct.wps_er_ap* %35)
  %37 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %38 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %37, i32 0, i32 7
  %39 = load %struct.wps_er_ap*, %struct.wps_er_ap** %38, align 8
  %40 = call i32 @os_free(%struct.wps_er_ap* %39)
  %41 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %42 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %41, i32 0, i32 6
  %43 = load %struct.wps_er_ap*, %struct.wps_er_ap** %42, align 8
  %44 = call i32 @os_free(%struct.wps_er_ap* %43)
  %45 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %46 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %45, i32 0, i32 5
  %47 = load %struct.wps_er_ap*, %struct.wps_er_ap** %46, align 8
  %48 = call i32 @os_free(%struct.wps_er_ap* %47)
  %49 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %50 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %49, i32 0, i32 4
  %51 = load %struct.wps_er_ap*, %struct.wps_er_ap** %50, align 8
  %52 = call i32 @os_free(%struct.wps_er_ap* %51)
  %53 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %54 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %53, i32 0, i32 3
  %55 = load %struct.wps_er_ap*, %struct.wps_er_ap** %54, align 8
  %56 = call i32 @os_free(%struct.wps_er_ap* %55)
  %57 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %58 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %57, i32 0, i32 2
  %59 = load %struct.wps_er_ap*, %struct.wps_er_ap** %58, align 8
  %60 = call i32 @os_free(%struct.wps_er_ap* %59)
  %61 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %62 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %61, i32 0, i32 1
  %63 = load %struct.wps_er_ap*, %struct.wps_er_ap** %62, align 8
  %64 = call i32 @os_free(%struct.wps_er_ap* %63)
  %65 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %66 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %65, i32 0, i32 0
  %67 = load %struct.wps_er_ap*, %struct.wps_er_ap** %66, align 8
  %68 = call i32 @os_free(%struct.wps_er_ap* %67)
  %69 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %70 = call i32 @os_free(%struct.wps_er_ap* %69)
  ret void
}

declare dso_local i32 @http_client_free(i32*) #1

declare dso_local i32 @os_free(%struct.wps_er_ap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
