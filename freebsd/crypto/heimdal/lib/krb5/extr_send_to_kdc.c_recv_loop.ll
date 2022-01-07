; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_send_to_kdc.c_recv_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_send_to_kdc.c_recv_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8* }
%struct.timeval = type { i64, i32 }

@FD_SETSIZE = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@FIONREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i64, %struct.TYPE_5__*)* @recv_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_loop(i64 %0, i32 %1, i32 %2, i64 %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @FD_SETSIZE, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %129

21:                                               ; preds = %5
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %23 = call i32 @krb5_data_zero(%struct.TYPE_5__* %22)
  br label %24

24:                                               ; preds = %126, %21
  %25 = call i32 @FD_ZERO(i32* %12)
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @FD_SET(i64 %26, i32* %12)
  %28 = load i32, i32* %8, align 4
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load i64, i64* %7, align 8
  %32 = add nsw i64 %31, 1
  %33 = call i32 @select(i64 %32, i32* %12, i32* null, i32* null, %struct.timeval* %13)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @EINTR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %112

41:                                               ; preds = %36
  store i32 -1, i32* %6, align 4
  br label %129

42:                                               ; preds = %24
  %43 = load i32, i32* %14, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %129

46:                                               ; preds = %42
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* @FIONREAD, align 4
  %49 = call i64 @rk_SOCK_IOCTL(i64 %47, i32 %48, i32* %15)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %53 = call i32 @krb5_data_free(%struct.TYPE_5__* %52)
  store i32 -1, i32* %6, align 4
  br label %129

54:                                               ; preds = %46
  %55 = load i32, i32* %15, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %129

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub i64 %64, %67
  %69 = call i32 @min(i64 %63, i64 %68)
  store i32 %69, i32* %15, align 4
  br label %70

70:                                               ; preds = %61, %58
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 %76, %78
  %80 = call i8* @realloc(i8* %73, i64 %79)
  store i8* %80, i8** %16, align 8
  %81 = load i8*, i8** %16, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %70
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %85 = call i32 @krb5_data_free(%struct.TYPE_5__* %84)
  store i32 -1, i32* %6, align 4
  br label %129

86:                                               ; preds = %70
  %87 = load i8*, i8** %16, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i8*, i8** %16, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @recv(i64 %90, i8* %95, i32 %96, i32 0)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %86
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %102 = call i32 @krb5_data_free(%struct.TYPE_5__* %101)
  store i32 -1, i32* %6, align 4
  br label %129

103:                                              ; preds = %86
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %108, %105
  store i64 %109, i64* %107, align 8
  br label %110

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111, %40
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %112
  %116 = load i64, i64* %10, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %115
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %10, align 8
  %123 = icmp ult i64 %121, %122
  br label %124

124:                                              ; preds = %118, %115
  %125 = phi i1 [ true, %115 ], [ %123, %118 ]
  br label %126

126:                                              ; preds = %124, %112
  %127 = phi i1 [ false, %112 ], [ %125, %124 ]
  br i1 %127, label %24, label %128

128:                                              ; preds = %126
  store i32 0, i32* %6, align 4
  br label %129

129:                                              ; preds = %128, %100, %83, %57, %51, %45, %41, %20
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local i32 @krb5_data_zero(%struct.TYPE_5__*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @rk_SOCK_IOCTL(i64, i32, i32*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_5__*) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @recv(i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
