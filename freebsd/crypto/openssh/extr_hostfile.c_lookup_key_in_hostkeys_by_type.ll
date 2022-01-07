; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_hostfile.c_lookup_key_in_hostkeys_by_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_hostfile.c_lookup_key_in_hostkeys_by_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostkeys = type { i32 }
%struct.hostkey_entry = type { i32 }

@HOST_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lookup_key_in_hostkeys_by_type(%struct.hostkeys* %0, i32 %1, %struct.hostkey_entry** %2) #0 {
  %4 = alloca %struct.hostkeys*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostkey_entry**, align 8
  store %struct.hostkeys* %0, %struct.hostkeys** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.hostkey_entry** %2, %struct.hostkey_entry*** %6, align 8
  %7 = load %struct.hostkeys*, %struct.hostkeys** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.hostkey_entry**, %struct.hostkey_entry*** %6, align 8
  %10 = call i64 @check_hostkeys_by_key_or_type(%struct.hostkeys* %7, i32* null, i32 %8, %struct.hostkey_entry** %9)
  %11 = load i64, i64* @HOST_FOUND, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  ret i32 %13
}

declare dso_local i64 @check_hostkeys_by_key_or_type(%struct.hostkeys*, i32*, i32, %struct.hostkey_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
