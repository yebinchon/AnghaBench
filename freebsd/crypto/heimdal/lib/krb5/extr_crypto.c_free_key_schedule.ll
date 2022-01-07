; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_free_key_schedule.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_free_key_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._krb5_key_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct._krb5_encryption_type = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, %struct._krb5_key_data*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct._krb5_key_data*, %struct._krb5_encryption_type*)* @free_key_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_key_schedule(i32 %0, %struct._krb5_key_data* %1, %struct._krb5_encryption_type* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._krb5_key_data*, align 8
  %6 = alloca %struct._krb5_encryption_type*, align 8
  store i32 %0, i32* %4, align 4
  store %struct._krb5_key_data* %1, %struct._krb5_key_data** %5, align 8
  store %struct._krb5_encryption_type* %2, %struct._krb5_encryption_type** %6, align 8
  %7 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %6, align 8
  %8 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32 (i32, %struct._krb5_key_data*)*, i32 (i32, %struct._krb5_key_data*)** %10, align 8
  %12 = icmp ne i32 (i32, %struct._krb5_key_data*)* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %6, align 8
  %15 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (i32, %struct._krb5_key_data*)*, i32 (i32, %struct._krb5_key_data*)** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load %struct._krb5_key_data*, %struct._krb5_key_data** %5, align 8
  %21 = call i32 %18(i32 %19, %struct._krb5_key_data* %20)
  br label %22

22:                                               ; preds = %13, %3
  %23 = load %struct._krb5_key_data*, %struct._krb5_key_data** %5, align 8
  %24 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct._krb5_key_data*, %struct._krb5_key_data** %5, align 8
  %29 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memset(i32 %27, i32 0, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load %struct._krb5_key_data*, %struct._krb5_key_data** %5, align 8
  %36 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i32 @krb5_free_data(i32 %34, %struct.TYPE_4__* %37)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @krb5_free_data(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
