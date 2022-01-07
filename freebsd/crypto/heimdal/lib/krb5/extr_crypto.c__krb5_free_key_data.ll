; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c__krb5_free_key_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c__krb5_free_key_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._krb5_key_data = type { i32*, i32 }
%struct._krb5_encryption_type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_krb5_free_key_data(i32 %0, %struct._krb5_key_data* %1, %struct._krb5_encryption_type* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._krb5_key_data*, align 8
  %6 = alloca %struct._krb5_encryption_type*, align 8
  store i32 %0, i32* %4, align 4
  store %struct._krb5_key_data* %1, %struct._krb5_key_data** %5, align 8
  store %struct._krb5_encryption_type* %2, %struct._krb5_encryption_type** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct._krb5_key_data*, %struct._krb5_key_data** %5, align 8
  %9 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @krb5_free_keyblock(i32 %7, i32 %10)
  %12 = load %struct._krb5_key_data*, %struct._krb5_key_data** %5, align 8
  %13 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i32, i32* %4, align 4
  %18 = load %struct._krb5_key_data*, %struct._krb5_key_data** %5, align 8
  %19 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %6, align 8
  %20 = call i32 @free_key_schedule(i32 %17, %struct._krb5_key_data* %18, %struct._krb5_encryption_type* %19)
  %21 = load %struct._krb5_key_data*, %struct._krb5_key_data** %5, align 8
  %22 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %16, %3
  ret void
}

declare dso_local i32 @krb5_free_keyblock(i32, i32) #1

declare dso_local i32 @free_key_schedule(i32, %struct._krb5_key_data*, %struct._krb5_encryption_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
