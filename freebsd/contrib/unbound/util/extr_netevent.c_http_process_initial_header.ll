; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_http_process_initial_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_http_process_initial_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32, i64, i32, i32, i64 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"http header: %s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"HTTP/1.1 \00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"http bad status %s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Content-Length: \00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Transfer-Encoding: chunked\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comm_point*)* @http_process_initial_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_process_initial_header(%struct.comm_point* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comm_point*, align 8
  %4 = alloca i8*, align 8
  store %struct.comm_point* %0, %struct.comm_point** %3, align 8
  %5 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %6 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @http_header_line(i32 %7)
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %85

12:                                               ; preds = %1
  %13 = load i32, i32* @VERB_ALGO, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @verbose(i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @strncasecmp(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %12
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 9
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 50
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i32, i32* @VERB_ALGO, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 9
  %29 = call i32 @verbose(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  store i32 0, i32* %2, align 4
  br label %85

30:                                               ; preds = %19
  br label %84

31:                                               ; preds = %12
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @strncasecmp(i8* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 16)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %37 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 16
  %43 = call i64 @atoi(i8* %42)
  %44 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %45 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %40, %35
  br label %83

47:                                               ; preds = %31
  %48 = load i8*, i8** %4, align 8
  %49 = call i64 @strncasecmp(i8* %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 26)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %53 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %55 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %82

56:                                               ; preds = %47
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %56
  %63 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %64 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  %65 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %66 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %71 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %70, i32 0, i32 2
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %62
  %73 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %74 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @http_moveover_buffer(i32 %75)
  %77 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %78 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @sldns_buffer_flip(i32 %79)
  store i32 1, i32* %2, align 4
  br label %85

81:                                               ; preds = %56
  br label %82

82:                                               ; preds = %81, %51
  br label %83

83:                                               ; preds = %82, %46
  br label %84

84:                                               ; preds = %83, %30
  store i32 1, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %72, %25, %11
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i8* @http_header_line(i32) #1

declare dso_local i32 @verbose(i32, i8*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @http_moveover_buffer(i32) #1

declare dso_local i32 @sldns_buffer_flip(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
