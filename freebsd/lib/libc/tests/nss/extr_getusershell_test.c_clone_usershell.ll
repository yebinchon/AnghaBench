; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getusershell_test.c_clone_usershell.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getusershell_test.c_clone_usershell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usershell = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usershell*, %struct.usershell*)* @clone_usershell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clone_usershell(%struct.usershell* %0, %struct.usershell* %1) #0 {
  %3 = alloca %struct.usershell*, align 8
  %4 = alloca %struct.usershell*, align 8
  store %struct.usershell* %0, %struct.usershell** %3, align 8
  store %struct.usershell* %1, %struct.usershell** %4, align 8
  %5 = load %struct.usershell*, %struct.usershell** %3, align 8
  %6 = icmp ne %struct.usershell* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.usershell*, %struct.usershell** %4, align 8
  %10 = icmp ne %struct.usershell* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.usershell*, %struct.usershell** %4, align 8
  %14 = getelementptr inbounds %struct.usershell, %struct.usershell* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.usershell*, %struct.usershell** %4, align 8
  %19 = getelementptr inbounds %struct.usershell, %struct.usershell* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32* @strdup(i32* %20)
  %22 = load %struct.usershell*, %struct.usershell** %3, align 8
  %23 = getelementptr inbounds %struct.usershell, %struct.usershell* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.usershell*, %struct.usershell** %3, align 8
  %25 = getelementptr inbounds %struct.usershell, %struct.usershell* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  br label %30

30:                                               ; preds = %17, %2
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @strdup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
