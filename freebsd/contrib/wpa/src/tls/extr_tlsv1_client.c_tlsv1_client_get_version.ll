; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client.c_tlsv1_client_get_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client.c_tlsv1_client_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"TLSv1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"TLSv1.1\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"TLSv1.2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tlsv1_client_get_version(%struct.tlsv1_client* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %9 = icmp ne %struct.tlsv1_client* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %30

11:                                               ; preds = %3
  %12 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %13 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %28 [
    i32 130, label %16
    i32 129, label %20
    i32 128, label %24
  ]

16:                                               ; preds = %11
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @os_strlcpy(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %29

20:                                               ; preds = %11
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @os_strlcpy(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  br label %29

24:                                               ; preds = %11
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @os_strlcpy(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %26)
  br label %29

28:                                               ; preds = %11
  store i32 -1, i32* %4, align 4
  br label %30

29:                                               ; preds = %24, %20, %16
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %28, %10
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @os_strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
