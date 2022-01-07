; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_print_fwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_print_fwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_pr = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i8*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.sockaddr = type { i32 }

@INET6_ADDRSTRLEN = common dso_local global i64 0, align 8
@IF_NAMESIZE = common dso_local global i64 0, align 8
@O_FORWARD_IP = common dso_local global i64 0, align 8
@INADDR_ANY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"fwd tablearg\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"fwd %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fwd \00", align 1
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c",%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf_pr*, %struct.TYPE_12__*)* @print_fwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_fwd(%struct.buf_pr* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.buf_pr*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  store %struct.buf_pr* %0, %struct.buf_pr** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %10 = load i64, i64* @INET6_ADDRSTRLEN, align 8
  %11 = load i64, i64* @IF_NAMESIZE, align 8
  %12 = add nsw i64 %10, %11
  %13 = add nsw i64 %12, 2
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @O_FORWARD_IP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = call %struct.TYPE_11__* @insntod(%struct.TYPE_12__* %22, %struct.TYPE_11__* %23)
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %8, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %9, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @INADDR_ANY, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %21
  %37 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %38 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %48

39:                                               ; preds = %21
  %40 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i8* @inet_ntoa(i64 %45)
  %47 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %39, %36
  br label %70

49:                                               ; preds = %2
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %52 = call %struct.TYPE_11__* @insntod(%struct.TYPE_12__* %50, %struct.TYPE_11__* %51)
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %7, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %9, align 8
  %57 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %58 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = bitcast %struct.TYPE_10__* %60 to %struct.sockaddr*
  %62 = trunc i64 %13 to i32
  %63 = load i32, i32* @NI_NUMERICHOST, align 4
  %64 = call i64 @getnameinfo(%struct.sockaddr* %61, i32 4, i8* %15, i32 %62, i32* null, i32 0, i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %49
  %67 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %68 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  br label %69

69:                                               ; preds = %66, %49
  br label %70

70:                                               ; preds = %69, %48
  %71 = load i8*, i8** %9, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %73, %70
  %78 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %78)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_11__* @insntod(%struct.TYPE_12__*, %struct.TYPE_11__*) #2

declare dso_local i32 @bprintf(%struct.buf_pr*, i8*, ...) #2

declare dso_local i8* @inet_ntoa(i64) #2

declare dso_local i64 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
