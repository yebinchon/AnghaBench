; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-sita.c_acn_findalldevs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-sita.c_acn_findalldevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }

@readfds = common dso_local global i32 0, align 4
@max_fs = common dso_local global i64 0, align 8
@MAX_CHASSIS = common dso_local global i32 0, align 4
@MAX_GEOSLOT = common dso_local global i32 0, align 4
@units = common dso_local global %struct.TYPE_4__** null, align 8
@FIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"Q\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acn_findalldevs(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  %7 = call i32 @FD_ZERO(i32* @readfds)
  store i64 0, i64* @max_fs, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %78, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MAX_CHASSIS, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %81

12:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %74, %12
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MAX_GEOSLOT, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %77

17:                                               ; preds = %13
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @units, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %18, i64 %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %6, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %73

30:                                               ; preds = %17
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = load i32, i32* @FIND, align 4
  %33 = call i64 @open_with_IOP(%struct.TYPE_4__* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %73

35:                                               ; preds = %30
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @send_to_fd(i64 %38, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = call i64 @get_error_response(i64 %42, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @FIND, align 4
  %50 = call i32 @close_with_IOP(i32 %47, i32 %48, i32 %49)
  br label %72

51:                                               ; preds = %35
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @max_fs, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* @max_fs, align 8
  br label %61

61:                                               ; preds = %57, %51
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @FD_SET(i64 %64, i32* @readfds)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @send_to_fd(i64 %70, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %61, %46
  br label %73

73:                                               ; preds = %72, %30, %17
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %13

77:                                               ; preds = %13
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %8

81:                                               ; preds = %8
  %82 = call i32 (...) @wait_for_all_answers()
  %83 = load i8*, i8** %3, align 8
  %84 = call i64 @process_client_data(i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 -1, i32* %2, align 4
  br label %89

87:                                               ; preds = %81
  %88 = call i32 (...) @sort_if_table()
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %86
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i64 @open_with_IOP(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @send_to_fd(i64, i32, i8*) #1

declare dso_local i64 @get_error_response(i64, i8*) #1

declare dso_local i32 @close_with_IOP(i32, i32, i32) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @wait_for_all_answers(...) #1

declare dso_local i64 @process_client_data(i8*) #1

declare dso_local i32 @sort_if_table(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
