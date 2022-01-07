; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/complib/extr_cl_nodenamemap.c_open_node_name_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/complib/extr_cl_nodenamemap.c_open_node_name_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARSE_NODE_MAP_BUFLEN = common dso_local global i32 0, align 4
@map_name = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"WARNING failed to parse node name map \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"WARNING failed line: \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"WARNING failed to open node name map \22%s\22 (%s)\0A\00", align 1
@HAVE_DEFAULT_NODENAME_MAP = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @open_node_name_map(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @PARSE_NODE_MAP_BUFLEN, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  store i32 1, i32* %7, align 4
  br label %54

16:                                               ; preds = %1
  %17 = call i32* @malloc(i32 4)
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32* null, i32** %2, align 8
  store i32 1, i32* %7, align 4
  br label %54

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @cl_qmap_init(i32* %22)
  %24 = load i32, i32* @PARSE_NODE_MAP_BUFLEN, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i32 @memset(i8* %12, i8 signext 0, i32 %25)
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* @map_name, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @PARSE_NODE_MAP_BUFLEN, align 4
  %31 = call i64 @parse_node_map_wrap(i8* %27, i32 %28, i32* %29, i8* %12, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %21
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @EIO, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* @stderr, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  br label %49

43:                                               ; preds = %33
  %44 = load i32, i32* @stderr, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = load i64, i64* @errno, align 8
  %47 = call i8* @strerror(i64 %46)
  %48 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %45, i8* %47)
  br label %49

49:                                               ; preds = %43, %37
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @close_node_name_map(i32* %50)
  store i32* null, i32** %2, align 8
  store i32 1, i32* %7, align 4
  br label %54

52:                                               ; preds = %21
  %53 = load i32*, i32** %4, align 8
  store i32* %53, i32** %2, align 8
  store i32 1, i32* %7, align 4
  br label %54

54:                                               ; preds = %52, %49, %20, %15
  %55 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32*, i32** %2, align 8
  ret i32* %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @cl_qmap_init(i32*) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i64 @parse_node_map_wrap(i8*, i32, i32*, i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

declare dso_local i8* @strerror(i64) #2

declare dso_local i32 @close_node_name_map(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
