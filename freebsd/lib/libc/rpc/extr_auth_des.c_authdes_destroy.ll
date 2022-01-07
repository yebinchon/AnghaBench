; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_des.c_authdes_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_des.c_authdes_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad_private = type { i32, i32, %struct.ad_private*, %struct.ad_private*, %struct.ad_private*, %struct.ad_private*, %struct.ad_private* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad_private*)* @authdes_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @authdes_destroy(%struct.ad_private* %0) #0 {
  %2 = alloca %struct.ad_private*, align 8
  %3 = alloca %struct.ad_private*, align 8
  store %struct.ad_private* %0, %struct.ad_private** %2, align 8
  %4 = load %struct.ad_private*, %struct.ad_private** %2, align 8
  %5 = call %struct.ad_private* @AUTH_PRIVATE(%struct.ad_private* %4)
  store %struct.ad_private* %5, %struct.ad_private** %3, align 8
  %6 = load %struct.ad_private*, %struct.ad_private** %3, align 8
  %7 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %6, i32 0, i32 6
  %8 = load %struct.ad_private*, %struct.ad_private** %7, align 8
  %9 = load %struct.ad_private*, %struct.ad_private** %3, align 8
  %10 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  %13 = call i32 @FREE(%struct.ad_private* %8, i32 %12)
  %14 = load %struct.ad_private*, %struct.ad_private** %3, align 8
  %15 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %14, i32 0, i32 5
  %16 = load %struct.ad_private*, %struct.ad_private** %15, align 8
  %17 = load %struct.ad_private*, %struct.ad_private** %3, align 8
  %18 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i32 @FREE(%struct.ad_private* %16, i32 %20)
  %22 = load %struct.ad_private*, %struct.ad_private** %3, align 8
  %23 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %22, i32 0, i32 4
  %24 = load %struct.ad_private*, %struct.ad_private** %23, align 8
  %25 = icmp ne %struct.ad_private* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = load %struct.ad_private*, %struct.ad_private** %3, align 8
  %28 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %27, i32 0, i32 4
  %29 = load %struct.ad_private*, %struct.ad_private** %28, align 8
  %30 = load %struct.ad_private*, %struct.ad_private** %3, align 8
  %31 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %30, i32 0, i32 4
  %32 = load %struct.ad_private*, %struct.ad_private** %31, align 8
  %33 = call i32 @strlen(%struct.ad_private* %32)
  %34 = add nsw i32 %33, 1
  %35 = call i32 @FREE(%struct.ad_private* %29, i32 %34)
  br label %36

36:                                               ; preds = %26, %1
  %37 = load %struct.ad_private*, %struct.ad_private** %3, align 8
  %38 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %37, i32 0, i32 3
  %39 = load %struct.ad_private*, %struct.ad_private** %38, align 8
  %40 = icmp ne %struct.ad_private* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.ad_private*, %struct.ad_private** %3, align 8
  %43 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %42, i32 0, i32 3
  %44 = load %struct.ad_private*, %struct.ad_private** %43, align 8
  %45 = load %struct.ad_private*, %struct.ad_private** %3, align 8
  %46 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %45, i32 0, i32 3
  %47 = load %struct.ad_private*, %struct.ad_private** %46, align 8
  %48 = call i32 @strlen(%struct.ad_private* %47)
  %49 = add nsw i32 %48, 1
  %50 = call i32 @FREE(%struct.ad_private* %44, i32 %49)
  br label %51

51:                                               ; preds = %41, %36
  %52 = load %struct.ad_private*, %struct.ad_private** %3, align 8
  %53 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %52, i32 0, i32 2
  %54 = load %struct.ad_private*, %struct.ad_private** %53, align 8
  %55 = icmp ne %struct.ad_private* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.ad_private*, %struct.ad_private** %3, align 8
  %58 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %57, i32 0, i32 2
  %59 = load %struct.ad_private*, %struct.ad_private** %58, align 8
  %60 = load %struct.ad_private*, %struct.ad_private** %3, align 8
  %61 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %60, i32 0, i32 2
  %62 = load %struct.ad_private*, %struct.ad_private** %61, align 8
  %63 = call i32 @strlen(%struct.ad_private* %62)
  %64 = add nsw i32 %63, 1
  %65 = call i32 @FREE(%struct.ad_private* %59, i32 %64)
  br label %66

66:                                               ; preds = %56, %51
  %67 = load %struct.ad_private*, %struct.ad_private** %3, align 8
  %68 = call i32 @FREE(%struct.ad_private* %67, i32 48)
  %69 = load %struct.ad_private*, %struct.ad_private** %2, align 8
  %70 = call i32 @FREE(%struct.ad_private* %69, i32 48)
  ret void
}

declare dso_local %struct.ad_private* @AUTH_PRIVATE(%struct.ad_private*) #1

declare dso_local i32 @FREE(%struct.ad_private*, i32) #1

declare dso_local i32 @strlen(%struct.ad_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
