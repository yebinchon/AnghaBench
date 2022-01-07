; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_ikev2_common.c_ikev2_free_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_ikev2_common.c_ikev2_free_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_keys = type { i32*, i32*, i32*, i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ikev2_free_keys(%struct.ikev2_keys* %0) #0 {
  %2 = alloca %struct.ikev2_keys*, align 8
  store %struct.ikev2_keys* %0, %struct.ikev2_keys** %2, align 8
  %3 = load %struct.ikev2_keys*, %struct.ikev2_keys** %2, align 8
  %4 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %3, i32 0, i32 6
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @os_free(i32* %5)
  %7 = load %struct.ikev2_keys*, %struct.ikev2_keys** %2, align 8
  %8 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %7, i32 0, i32 5
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @os_free(i32* %9)
  %11 = load %struct.ikev2_keys*, %struct.ikev2_keys** %2, align 8
  %12 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @os_free(i32* %13)
  %15 = load %struct.ikev2_keys*, %struct.ikev2_keys** %2, align 8
  %16 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @os_free(i32* %17)
  %19 = load %struct.ikev2_keys*, %struct.ikev2_keys** %2, align 8
  %20 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @os_free(i32* %21)
  %23 = load %struct.ikev2_keys*, %struct.ikev2_keys** %2, align 8
  %24 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @os_free(i32* %25)
  %27 = load %struct.ikev2_keys*, %struct.ikev2_keys** %2, align 8
  %28 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @os_free(i32* %29)
  %31 = load %struct.ikev2_keys*, %struct.ikev2_keys** %2, align 8
  %32 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load %struct.ikev2_keys*, %struct.ikev2_keys** %2, align 8
  %34 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.ikev2_keys*, %struct.ikev2_keys** %2, align 8
  %36 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load %struct.ikev2_keys*, %struct.ikev2_keys** %2, align 8
  %38 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %37, i32 0, i32 3
  store i32* null, i32** %38, align 8
  %39 = load %struct.ikev2_keys*, %struct.ikev2_keys** %2, align 8
  %40 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %39, i32 0, i32 4
  store i32* null, i32** %40, align 8
  %41 = load %struct.ikev2_keys*, %struct.ikev2_keys** %2, align 8
  %42 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %41, i32 0, i32 5
  store i32* null, i32** %42, align 8
  %43 = load %struct.ikev2_keys*, %struct.ikev2_keys** %2, align 8
  %44 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %43, i32 0, i32 6
  store i32* null, i32** %44, align 8
  ret void
}

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
