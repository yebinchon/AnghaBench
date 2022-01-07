; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_findzonecut.c_do_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_findzonecut.c_do_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NS_PACKETSZ = common dso_local global i32 0, align 4
@ns_o_query = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"do_query: res_nmkquery failed\00", align 1
@NS_MAXMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"do_query: res_nsend failed\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"do_query: res_nsend returned 0\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"do_query: ns_initparse failed\00", align 1
@ns_s_an = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"do_query: ns_parserr failed\00", align 1
@ns_t_cname = common dso_local global i64 0, align 8
@ns_t_dname = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, i32, i32*, i32*)* @do_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_query(i32 %0, i8* %1, i64 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load i32, i32* @NS_PACKETSZ, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @ns_o_query, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @NS_PACKETSZ, align 4
  %30 = call i32 @res_nmkquery(i32 %24, i32 %25, i8* %26, i64 %27, i32 %28, i32* null, i32 0, i32* null, i32* %23, i32 %29)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = call i32 @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %102

35:                                               ; preds = %6
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %17, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = load i32, i32* @NS_MAXMSG, align 4
  %40 = call i32 @res_nsend(i32 %36, i32* %23, i32 %37, i32* %38, i32 %39)
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = call i32 @DPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %102

45:                                               ; preds = %35
  %46 = load i32, i32* %17, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = call i32 @DPRINTF(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @EMSGSIZE, align 4
  store i32 %50, i32* @errno, align 4
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %102

51:                                               ; preds = %45
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* %17, align 4
  %54 = load i32*, i32** %13, align 8
  %55 = call i64 @ns_initparse(i32* %52, i32 %53, i32* %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = call i32 @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %102

59:                                               ; preds = %51
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %60

60:                                               ; preds = %97, %59
  %61 = load i32, i32* %16, align 4
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ns_s_an, align 4
  %65 = call i32 @ns_msg_count(i32 %63, i32 %64)
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %100

67:                                               ; preds = %60
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* @ns_s_an, align 4
  %70 = load i32, i32* %16, align 4
  %71 = call i64 @ns_parserr(i32* %68, i32 %69, i32 %70, i32* %19)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = call i32 @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %102

75:                                               ; preds = %67
  %76 = load i32, i32* %19, align 4
  %77 = call i64 @ns_rr_class(i32 %76)
  %78 = load i64, i64* %10, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %75
  %81 = load i32, i32* %19, align 4
  %82 = call i64 @ns_rr_type(i32 %81)
  %83 = load i64, i64* @ns_t_cname, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %19, align 4
  %87 = call i64 @ns_rr_type(i32 %86)
  %88 = load i64, i64* @ns_t_dname, align 8
  %89 = icmp eq i64 %87, %88
  br label %90

90:                                               ; preds = %85, %80
  %91 = phi i1 [ true, %80 ], [ %89, %85 ]
  br label %92

92:                                               ; preds = %90, %75
  %93 = phi i1 [ false, %75 ], [ %91, %90 ]
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %17, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %17, align 4
  br label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %16, align 4
  br label %60

100:                                              ; preds = %60
  %101 = load i32, i32* %17, align 4
  store i32 %101, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %102

102:                                              ; preds = %100, %73, %57, %48, %43, %33
  %103 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @res_nmkquery(i32, i32, i8*, i64, i32, i32*, i32, i32*, i32*, i32) #2

declare dso_local i32 @DPRINTF(i8*) #2

declare dso_local i32 @res_nsend(i32, i32*, i32, i32*, i32) #2

declare dso_local i64 @ns_initparse(i32*, i32, i32*) #2

declare dso_local i32 @ns_msg_count(i32, i32) #2

declare dso_local i64 @ns_parserr(i32*, i32, i32, i32*) #2

declare dso_local i64 @ns_rr_class(i32) #2

declare dso_local i64 @ns_rr_type(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
