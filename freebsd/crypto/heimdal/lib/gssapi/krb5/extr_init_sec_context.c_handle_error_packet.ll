; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_init_sec_context.c_handle_error_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_init_sec_context.c_handle_error_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i8*, i32 }
%struct.TYPE_13__ = type { i32 }

@KRB5KRB_AP_ERR_SKEW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"time-offset\00", align 1
@RETRIED = common dso_local global i32 0, align 4
@INITIATOR_RESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_12__*, i8*, i32)* @handle_error_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @handle_error_packet(i32 %0, %struct.TYPE_12__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__, align 4
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca [4 x i8], align 1
  %12 = alloca i32, align 4
  %13 = bitcast %struct.TYPE_11__* %5 to { i8*, i32 }*
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %13, i32 0, i32 0
  store i8* %2, i8** %14, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %13, i32 0, i32 1
  store i32 %3, i32* %15, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @krb5_rd_error(i32 %16, %struct.TYPE_11__* %5, %struct.TYPE_13__* %9)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %80

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @krb5_error_from_rd_error(i32 %21, %struct.TYPE_13__* %9, i32* null)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @KRB5KRB_AP_ERR_SKEW, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %78

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @time(i32* null)
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = ashr i32 %31, 24
  %33 = and i32 %32, 255
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  store i8 %34, i8* %35, align 1
  %36 = load i32, i32* %12, align 4
  %37 = ashr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 1
  store i8 %39, i8* %40, align 1
  %41 = load i32, i32* %12, align 4
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 255
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 2
  store i8 %44, i8* %45, align 1
  %46 = load i32, i32* %12, align 4
  %47 = ashr i32 %46, 0
  %48 = and i32 %47, 255
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 3
  store i8 %49, i8* %50, align 1
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i8* %51, i8** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i32 4, i32* %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @krb5_cc_set_config(i32 %54, i32 %57, i32 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %10)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @RETRIED, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %26
  %69 = load i32, i32* @INITIATOR_RESTART, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %26
  %73 = load i32, i32* @RETRIED, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %20
  %79 = call i32 @free_KRB_ERROR(%struct.TYPE_13__* %9)
  br label %80

80:                                               ; preds = %78, %4
  %81 = load i64, i64* %8, align 8
  ret i64 %81
}

declare dso_local i64 @krb5_rd_error(i32, %struct.TYPE_11__*, %struct.TYPE_13__*) #1

declare dso_local i64 @krb5_error_from_rd_error(i32, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @krb5_cc_set_config(i32, i32, i32, i8*, %struct.TYPE_11__*) #1

declare dso_local i32 @free_KRB_ERROR(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
