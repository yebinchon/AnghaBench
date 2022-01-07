; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getusershell_test.c_usershell_read_snapshot_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getusershell_test.c_usershell_read_snapshot_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usershell = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usershell*, i8*)* @usershell_read_snapshot_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usershell_read_snapshot_func(%struct.usershell* %0, i8* %1) #0 {
  %3 = alloca %struct.usershell*, align 8
  %4 = alloca i8*, align 8
  store %struct.usershell* %0, %struct.usershell** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = call i32* @strdup(i8* %5)
  %7 = load %struct.usershell*, %struct.usershell** %3, align 8
  %8 = getelementptr inbounds %struct.usershell, %struct.usershell* %7, i32 0, i32 0
  store i32* %6, i32** %8, align 8
  %9 = load %struct.usershell*, %struct.usershell** %3, align 8
  %10 = getelementptr inbounds %struct.usershell, %struct.usershell* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @ATF_REQUIRE(i32 %13)
  ret i32 0
}

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
