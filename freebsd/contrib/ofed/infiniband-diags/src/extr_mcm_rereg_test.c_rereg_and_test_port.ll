; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_mcm_rereg_test.c_rereg_and_test_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_mcm_rereg_test.c_rereg_and_test_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.guid_trid = type { i32, i32*, i64 }

@MAX_CLIENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"cannot alloc mem for guid/trid list: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"cannot open %s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32*, i32)* @rereg_and_test_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rereg_and_test_port(i8* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [256 x i8], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.guid_trid*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = call i32 @htonll(i32 0)
  store i32 %19, i32* %15, align 4
  %20 = call i32 @htonll(i32 2242597)
  store i32 %20, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %21 = load i32, i32* @MAX_CLIENTS, align 4
  %22 = call %struct.guid_trid* @calloc(i32 %21, i32 24)
  store %struct.guid_trid* %22, %struct.guid_trid** %17, align 8
  %23 = load %struct.guid_trid*, %struct.guid_trid** %17, align 8
  %24 = icmp ne %struct.guid_trid* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @strerror(i32 %26)
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 (i8*, i8*, ...) @err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %29)
  store i32 -1, i32* %6, align 4
  br label %106

31:                                               ; preds = %5
  %32 = load i8*, i8** %7, align 8
  %33 = call i32* @fopen(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %33, i32** %13, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @strerror(i32 %38)
  %40 = call i32 (i8*, i8*, ...) @err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %37, i32 %39)
  store i32 -1, i32* %6, align 4
  br label %106

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %82, %41
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %44 = load i32*, i32** %13, align 8
  %45 = call i64 @fgets(i8* %43, i32 256, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %83

47:                                               ; preds = %42
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %49 = call i32 @strtoull(i8* %48, i32* null, i32 0)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @htonll(i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32*, i32** %14, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = call i32 @memcpy(i32* %53, i32* %15, i32 8)
  %55 = load i32*, i32** %14, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 8
  %57 = call i32 @memcpy(i32* %56, i32* %16, i32 8)
  %58 = load i32, i32* %16, align 4
  %59 = load %struct.guid_trid*, %struct.guid_trid** %17, align 8
  %60 = load i32, i32* %18, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.guid_trid, %struct.guid_trid* %59, i64 %61
  %63 = getelementptr inbounds %struct.guid_trid, %struct.guid_trid* %62, i32 0, i32 0
  store i32 %58, i32* %63, align 8
  %64 = load %struct.guid_trid*, %struct.guid_trid** %17, align 8
  %65 = load i32, i32* %18, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.guid_trid, %struct.guid_trid* %64, i64 %66
  %68 = getelementptr inbounds %struct.guid_trid, %struct.guid_trid* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32*, i32** %14, align 8
  %71 = call i32 @memcpy(i32* %69, i32* %70, i32 8)
  %72 = load %struct.guid_trid*, %struct.guid_trid** %17, align 8
  %73 = load i32, i32* %18, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.guid_trid, %struct.guid_trid* %72, i64 %74
  %76 = getelementptr inbounds %struct.guid_trid, %struct.guid_trid* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* %18, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* @MAX_CLIENTS, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %47
  br label %83

82:                                               ; preds = %47
  br label %42

83:                                               ; preds = %81, %42
  %84 = load i32*, i32** %13, align 8
  %85 = call i32 @fclose(i32* %84)
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32*, i32** %10, align 8
  %89 = load %struct.guid_trid*, %struct.guid_trid** %17, align 8
  %90 = load i32, i32* %18, align 4
  %91 = call i32 @rereg_send_all(i32 %86, i32 %87, i32* %88, %struct.guid_trid* %89, i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32*, i32** %10, align 8
  %95 = load %struct.guid_trid*, %struct.guid_trid** %17, align 8
  %96 = load i32, i32* %18, align 4
  %97 = call i32 @rereg_recv_all(i32 %92, i32 %93, i32* %94, %struct.guid_trid* %95, i32 %96)
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32*, i32** %10, align 8
  %101 = load %struct.guid_trid*, %struct.guid_trid** %17, align 8
  %102 = load i32, i32* %18, align 4
  %103 = call i32 @rereg_query_all(i32 %98, i32 %99, i32* %100, %struct.guid_trid* %101, i32 %102)
  %104 = load %struct.guid_trid*, %struct.guid_trid** %17, align 8
  %105 = call i32 @free(%struct.guid_trid* %104)
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %83, %36, %25
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @htonll(i32) #1

declare dso_local %struct.guid_trid* @calloc(i32, i32) #1

declare dso_local i32 @err(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strtoull(i8*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @rereg_send_all(i32, i32, i32*, %struct.guid_trid*, i32) #1

declare dso_local i32 @rereg_recv_all(i32, i32, i32*, %struct.guid_trid*, i32) #1

declare dso_local i32 @rereg_query_all(i32, i32, i32*, %struct.guid_trid*, i32) #1

declare dso_local i32 @free(%struct.guid_trid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
