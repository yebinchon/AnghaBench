; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_free_key_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_free_key_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._krb5_key_usage = type { i32 }
%struct._krb5_encryption_type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct._krb5_key_usage*, %struct._krb5_encryption_type*)* @free_key_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_key_usage(i32 %0, %struct._krb5_key_usage* %1, %struct._krb5_encryption_type* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._krb5_key_usage*, align 8
  %6 = alloca %struct._krb5_encryption_type*, align 8
  store i32 %0, i32* %4, align 4
  store %struct._krb5_key_usage* %1, %struct._krb5_key_usage** %5, align 8
  store %struct._krb5_encryption_type* %2, %struct._krb5_encryption_type** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct._krb5_key_usage*, %struct._krb5_key_usage** %5, align 8
  %9 = getelementptr inbounds %struct._krb5_key_usage, %struct._krb5_key_usage* %8, i32 0, i32 0
  %10 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %6, align 8
  %11 = call i32 @_krb5_free_key_data(i32 %7, i32* %9, %struct._krb5_encryption_type* %10)
  ret void
}

declare dso_local i32 @_krb5_free_key_data(i32, i32*, %struct._krb5_encryption_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
