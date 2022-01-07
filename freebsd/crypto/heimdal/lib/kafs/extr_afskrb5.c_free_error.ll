; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_afskrb5.c_free_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_afskrb5.c_free_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kafs_data = type { %struct.krb5_kafs_data* }
%struct.krb5_kafs_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kafs_data*, i8*)* @free_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_error(%struct.kafs_data* %0, i8* %1) #0 {
  %3 = alloca %struct.kafs_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.krb5_kafs_data*, align 8
  store %struct.kafs_data* %0, %struct.kafs_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.kafs_data*, %struct.kafs_data** %3, align 8
  %7 = getelementptr inbounds %struct.kafs_data, %struct.kafs_data* %6, i32 0, i32 0
  %8 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %7, align 8
  store %struct.krb5_kafs_data* %8, %struct.krb5_kafs_data** %5, align 8
  %9 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %5, align 8
  %10 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @krb5_free_error_message(i32 %11, i8* %12)
  ret void
}

declare dso_local i32 @krb5_free_error_message(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
