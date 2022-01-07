; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_write.c_tlsv1_server_send_alert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_write.c_tlsv1_server_send_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Send Alert(%d:%d)\00", align 1
@TLS_CONTENT_TYPE_ALERT = common dso_local global i32 0, align 4
@TLS_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @tlsv1_server_send_alert(%struct.tlsv1_server* %0, i8* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca %struct.tlsv1_server*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @tlsv1_server_log(%struct.tlsv1_server* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %15)
  %17 = load i64*, i64** %9, align 8
  store i64 0, i64* %17, align 8
  %18 = call i8** @os_malloc(i32 10)
  store i8** %18, i8*** %10, align 8
  %19 = load i8**, i8*** %10, align 8
  %20 = icmp eq i8** %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i8** null, i8*** %5, align 8
  br label %74

22:                                               ; preds = %4
  %23 = load i8**, i8*** %10, align 8
  store i8** %23, i8*** %11, align 8
  %24 = load i32, i32* @TLS_CONTENT_TYPE_ALERT, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = load i8**, i8*** %11, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i32 1
  store i8** %28, i8*** %11, align 8
  store i8* %26, i8** %27, align 8
  %29 = load i8**, i8*** %11, align 8
  %30 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %31 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %22
  %36 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %37 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  br label %42

40:                                               ; preds = %22
  %41 = load i32, i32* @TLS_VERSION, align 4
  br label %42

42:                                               ; preds = %40, %35
  %43 = phi i32 [ %39, %35 ], [ %41, %40 ]
  %44 = call i32 @WPA_PUT_BE16(i8** %29, i32 %43)
  %45 = load i8**, i8*** %11, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 2
  store i8** %46, i8*** %11, align 8
  %47 = load i8**, i8*** %11, align 8
  store i8** %47, i8*** %12, align 8
  %48 = load i8**, i8*** %11, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 2
  store i8** %49, i8*** %11, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i8**, i8*** %11, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %52, i8*** %11, align 8
  store i8* %50, i8** %51, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i8**, i8*** %11, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i32 1
  store i8** %55, i8*** %11, align 8
  store i8* %53, i8** %54, align 8
  %56 = load i8**, i8*** %12, align 8
  %57 = load i8**, i8*** %11, align 8
  %58 = load i8**, i8*** %12, align 8
  %59 = ptrtoint i8** %57 to i64
  %60 = ptrtoint i8** %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 8
  %63 = sub nsw i64 %62, 2
  %64 = trunc i64 %63 to i32
  %65 = call i32 @WPA_PUT_BE16(i8** %56, i32 %64)
  %66 = load i8**, i8*** %11, align 8
  %67 = load i8**, i8*** %10, align 8
  %68 = ptrtoint i8** %66 to i64
  %69 = ptrtoint i8** %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 8
  %72 = load i64*, i64** %9, align 8
  store i64 %71, i64* %72, align 8
  %73 = load i8**, i8*** %10, align 8
  store i8** %73, i8*** %5, align 8
  br label %74

74:                                               ; preds = %42, %21
  %75 = load i8**, i8*** %5, align 8
  ret i8** %75
}

declare dso_local i32 @tlsv1_server_log(%struct.tlsv1_server*, i8*, i8*, i8*) #1

declare dso_local i8** @os_malloc(i32) #1

declare dso_local i32 @WPA_PUT_BE16(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
