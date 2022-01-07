; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_http_process_chunk_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_http_process_chunk_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32, i64, i32, i32, i32 (%struct.comm_point*, i32, i32, i32*)* }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"http chunk trailer: %s\00", align 1
@NETEVENT_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"http chunk header: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comm_point*)* @http_process_chunk_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_process_chunk_header(%struct.comm_point* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comm_point*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.comm_point* %0, %struct.comm_point** %3, align 8
  %6 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %7 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i8* @http_header_line(i32 %8)
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %110

13:                                               ; preds = %1
  %14 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %15 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %73

18:                                               ; preds = %13
  %19 = load i32, i32* @VERB_ALGO, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @verbose(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %18
  %28 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %29 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %27
  %33 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %34 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @sldns_buffer_set_position(i32 %35, i32 0)
  %37 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %38 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @sldns_buffer_set_limit(i32 %39, i32 0)
  %41 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %42 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %41, i32 0, i32 4
  %43 = load i32 (%struct.comm_point*, i32, i32, i32*)*, i32 (%struct.comm_point*, i32, i32, i32*)** %42, align 8
  %44 = call i32 @fptr_whitelist_comm_point(i32 (%struct.comm_point*, i32, i32, i32*)* %43)
  %45 = call i32 @fptr_ok(i32 %44)
  %46 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %47 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %46, i32 0, i32 4
  %48 = load i32 (%struct.comm_point*, i32, i32, i32*)*, i32 (%struct.comm_point*, i32, i32, i32*)** %47, align 8
  %49 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %50 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %51 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NETEVENT_DONE, align 4
  %54 = call i32 %48(%struct.comm_point* %49, i32 %52, i32 %53, i32* null)
  store i32 2, i32* %2, align 4
  br label %110

55:                                               ; preds = %27, %18
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %63 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %65 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @http_moveover_buffer(i32 %66)
  %68 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %69 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @sldns_buffer_flip(i32 %70)
  store i32 1, i32* %2, align 4
  br label %110

72:                                               ; preds = %55
  store i32 1, i32* %2, align 4
  br label %110

73:                                               ; preds = %13
  %74 = load i32, i32* @VERB_ALGO, align 4
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @verbose(i32 %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  %77 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %78 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %109

81:                                               ; preds = %73
  store i8* null, i8** %5, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = call i64 @strtol(i8* %82, i8** %5, i32 16)
  %84 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %85 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = icmp eq i8* %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %110

90:                                               ; preds = %81
  %91 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %92 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %94 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @http_moveover_buffer(i32 %95)
  %97 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %98 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @sldns_buffer_flip(i32 %99)
  %101 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %102 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %90
  %106 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %107 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %106, i32 0, i32 0
  store i32 3, i32* %107, align 8
  br label %108

108:                                              ; preds = %105, %90
  store i32 1, i32* %2, align 4
  br label %110

109:                                              ; preds = %73
  store i32 1, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %108, %89, %72, %61, %32, %12
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i8* @http_header_line(i32) #1

declare dso_local i32 @verbose(i32, i8*, i8*) #1

declare dso_local i32 @sldns_buffer_set_position(i32, i32) #1

declare dso_local i32 @sldns_buffer_set_limit(i32, i32) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_comm_point(i32 (%struct.comm_point*, i32, i32, i32*)*) #1

declare dso_local i32 @http_moveover_buffer(i32) #1

declare dso_local i32 @sldns_buffer_flip(i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
