; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_freebsd.c_l2_packet_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_freebsd.c_l2_packet_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2_packet_data = type { i8*, void (i8*, i32*, i32*, i64)*, i32, i32, i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Failed to get link-level address for interface '%s'.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.l2_packet_data* @l2_packet_init(i8* %0, i32* %1, i16 zeroext %2, void (i8*, i32*, i32*, i64)* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.l2_packet_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i16, align 2
  %11 = alloca void (i8*, i32*, i32*, i64)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.l2_packet_data*, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i16 %2, i16* %10, align 2
  store void (i8*, i32*, i32*, i64)* %3, void (i8*, i32*, i32*, i64)** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = call %struct.l2_packet_data* @os_zalloc(i32 32)
  store %struct.l2_packet_data* %15, %struct.l2_packet_data** %14, align 8
  %16 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %17 = icmp eq %struct.l2_packet_data* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store %struct.l2_packet_data* null, %struct.l2_packet_data** %7, align 8
  br label %60

19:                                               ; preds = %6
  %20 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %21 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @os_strlcpy(i8* %22, i8* %23, i32 8)
  %25 = load void (i8*, i32*, i32*, i64)*, void (i8*, i32*, i32*, i64)** %11, align 8
  %26 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %27 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %26, i32 0, i32 1
  store void (i8*, i32*, i32*, i64)* %25, void (i8*, i32*, i32*, i64)** %27, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %30 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %33 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %35 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %38 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @eth_get(i8* %36, i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %19
  %43 = load i32, i32* @stderr, align 4
  %44 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %45 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %49 = call i32 @os_free(%struct.l2_packet_data* %48)
  store %struct.l2_packet_data* null, %struct.l2_packet_data** %7, align 8
  br label %60

50:                                               ; preds = %19
  %51 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %52 = load i16, i16* %10, align 2
  %53 = call i64 @l2_packet_init_libpcap(%struct.l2_packet_data* %51, i16 zeroext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %57 = call i32 @os_free(%struct.l2_packet_data* %56)
  store %struct.l2_packet_data* null, %struct.l2_packet_data** %7, align 8
  br label %60

58:                                               ; preds = %50
  %59 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  store %struct.l2_packet_data* %59, %struct.l2_packet_data** %7, align 8
  br label %60

60:                                               ; preds = %58, %55, %42, %18
  %61 = load %struct.l2_packet_data*, %struct.l2_packet_data** %7, align 8
  ret %struct.l2_packet_data* %61
}

declare dso_local %struct.l2_packet_data* @os_zalloc(i32) #1

declare dso_local i32 @os_strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @eth_get(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @os_free(%struct.l2_packet_data*) #1

declare dso_local i64 @l2_packet_init_libpcap(%struct.l2_packet_data*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
