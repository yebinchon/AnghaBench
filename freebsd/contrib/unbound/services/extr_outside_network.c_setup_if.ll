; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_setup_if.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_setup_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_if = type { i32, i32*, i32, %struct.port_comm**, i64, i32, i32, i32 }
%struct.port_comm = type { i32 }

@UNBOUND_DNS_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port_if*, i8*, i32*, i32, i64)* @setup_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_if(%struct.port_if* %0, i8* %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.port_if*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.port_if* %0, %struct.port_if** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %12 = load i32, i32* %10, align 4
  %13 = load %struct.port_if*, %struct.port_if** %7, align 8
  %14 = getelementptr inbounds %struct.port_if, %struct.port_if* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = call i64 @memdup(i32* %15, i64 %18)
  %20 = inttoptr i64 %19 to i32*
  %21 = load %struct.port_if*, %struct.port_if** %7, align 8
  %22 = getelementptr inbounds %struct.port_if, %struct.port_if* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.port_if*, %struct.port_if** %7, align 8
  %24 = getelementptr inbounds %struct.port_if, %struct.port_if* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %67

28:                                               ; preds = %5
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* @UNBOUND_DNS_PORT, align 4
  %31 = load %struct.port_if*, %struct.port_if** %7, align 8
  %32 = getelementptr inbounds %struct.port_if, %struct.port_if* %31, i32 0, i32 7
  %33 = load %struct.port_if*, %struct.port_if** %7, align 8
  %34 = getelementptr inbounds %struct.port_if, %struct.port_if* %33, i32 0, i32 6
  %35 = call i32 @ipstrtoaddr(i8* %29, i32 %30, i32* %32, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %28
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* @UNBOUND_DNS_PORT, align 4
  %40 = load %struct.port_if*, %struct.port_if** %7, align 8
  %41 = getelementptr inbounds %struct.port_if, %struct.port_if* %40, i32 0, i32 7
  %42 = load %struct.port_if*, %struct.port_if** %7, align 8
  %43 = getelementptr inbounds %struct.port_if, %struct.port_if* %42, i32 0, i32 6
  %44 = load %struct.port_if*, %struct.port_if** %7, align 8
  %45 = getelementptr inbounds %struct.port_if, %struct.port_if* %44, i32 0, i32 5
  %46 = call i32 @netblockstrtoaddr(i8* %38, i32 %39, i32* %41, i32* %43, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %67

49:                                               ; preds = %37, %28
  %50 = load i64, i64* %11, align 8
  %51 = trunc i64 %50 to i32
  %52 = load %struct.port_if*, %struct.port_if** %7, align 8
  %53 = getelementptr inbounds %struct.port_if, %struct.port_if* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.port_if*, %struct.port_if** %7, align 8
  %55 = getelementptr inbounds %struct.port_if, %struct.port_if* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load i64, i64* %11, align 8
  %57 = call i64 @calloc(i64 %56, i32 8)
  %58 = inttoptr i64 %57 to %struct.port_comm**
  %59 = load %struct.port_if*, %struct.port_if** %7, align 8
  %60 = getelementptr inbounds %struct.port_if, %struct.port_if* %59, i32 0, i32 3
  store %struct.port_comm** %58, %struct.port_comm*** %60, align 8
  %61 = load %struct.port_if*, %struct.port_if** %7, align 8
  %62 = getelementptr inbounds %struct.port_if, %struct.port_if* %61, i32 0, i32 3
  %63 = load %struct.port_comm**, %struct.port_comm*** %62, align 8
  %64 = icmp ne %struct.port_comm** %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %67

66:                                               ; preds = %49
  store i32 1, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %65, %48, %27
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i64 @memdup(i32*, i64) #1

declare dso_local i32 @ipstrtoaddr(i8*, i32, i32*, i32*) #1

declare dso_local i32 @netblockstrtoaddr(i8*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @calloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
