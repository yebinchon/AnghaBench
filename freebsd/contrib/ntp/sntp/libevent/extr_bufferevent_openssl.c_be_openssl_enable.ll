; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_be_openssl_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_be_openssl_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_openssl = type { i64, i64 }

@BUFFEREVENT_SSL_OPEN = common dso_local global i64 0, align 8
@EV_READ = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent*, i16)* @be_openssl_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_openssl_enable(%struct.bufferevent* %0, i16 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.bufferevent_openssl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i16 %1, i16* %5, align 2
  %9 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %10 = call %struct.bufferevent_openssl* @upcast(%struct.bufferevent* %9)
  store %struct.bufferevent_openssl* %10, %struct.bufferevent_openssl** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %6, align 8
  %12 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BUFFEREVENT_SSL_OPEN, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %93

17:                                               ; preds = %2
  %18 = load i16, i16* %5, align 2
  %19 = sext i16 %18 to i32
  %20 = load i16, i16* @EV_READ, align 2
  %21 = sext i16 %20 to i32
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %6, align 8
  %26 = call i32 @start_reading(%struct.bufferevent_openssl* %25)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %24, %17
  %28 = load i16, i16* %5, align 2
  %29 = sext i16 %28 to i32
  %30 = load i16, i16* @EV_WRITE, align 2
  %31 = sext i16 %30 to i32
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %6, align 8
  %36 = call i32 @start_writing(%struct.bufferevent_openssl* %35)
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %34, %27
  %38 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %6, align 8
  %39 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %83

42:                                               ; preds = %37
  %43 = load i16, i16* %5, align 2
  %44 = sext i16 %43 to i32
  %45 = load i16, i16* @EV_READ, align 2
  %46 = sext i16 %45 to i32
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %51 = call i32 @BEV_RESET_GENERIC_READ_TIMEOUT(%struct.bufferevent* %50)
  br label %52

52:                                               ; preds = %49, %42
  %53 = load i16, i16* %5, align 2
  %54 = sext i16 %53 to i32
  %55 = load i16, i16* @EV_WRITE, align 2
  %56 = sext i16 %55 to i32
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %61 = call i32 @BEV_RESET_GENERIC_WRITE_TIMEOUT(%struct.bufferevent* %60)
  br label %62

62:                                               ; preds = %59, %52
  %63 = load i16, i16* %5, align 2
  %64 = sext i16 %63 to i32
  %65 = load i16, i16* @EV_READ, align 2
  %66 = sext i16 %65 to i32
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %6, align 8
  %71 = call i32 @consider_reading(%struct.bufferevent_openssl* %70)
  br label %72

72:                                               ; preds = %69, %62
  %73 = load i16, i16* %5, align 2
  %74 = sext i16 %73 to i32
  %75 = load i16, i16* @EV_WRITE, align 2
  %76 = sext i16 %75 to i32
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %6, align 8
  %81 = call i32 @consider_writing(%struct.bufferevent_openssl* %80)
  br label %82

82:                                               ; preds = %79, %72
  br label %83

83:                                               ; preds = %82, %37
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 0
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi i1 [ true, %83 ], [ %88, %86 ]
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 -1, i32 0
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %16
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.bufferevent_openssl* @upcast(%struct.bufferevent*) #1

declare dso_local i32 @start_reading(%struct.bufferevent_openssl*) #1

declare dso_local i32 @start_writing(%struct.bufferevent_openssl*) #1

declare dso_local i32 @BEV_RESET_GENERIC_READ_TIMEOUT(%struct.bufferevent*) #1

declare dso_local i32 @BEV_RESET_GENERIC_WRITE_TIMEOUT(%struct.bufferevent*) #1

declare dso_local i32 @consider_reading(%struct.bufferevent_openssl*) #1

declare dso_local i32 @consider_writing(%struct.bufferevent_openssl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
