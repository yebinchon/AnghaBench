; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/tests/core/extr_test_10.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/tests/core/extr_test_10.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i8*, i32, i32, i32, i8*, i32 }
%struct.TYPE_3__ = type { i8*, i8*, i8* }

@main.base_grocery = internal global [4 x i8] c"GRO\00", align 1
@main.base_hardware = internal global [4 x i8] c"HRD\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"gum\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"rope\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ladder\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bolt\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"water\00", align 1
@__const.main.list = private unnamed_addr constant [6 x %struct.item] [%struct.item { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 1412, i32 54, i32 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @main.base_grocery, i32 0, i32 0), i32 415 }, %struct.item { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 85, i32 4, i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @main.base_hardware, i32 0, i32 0), i32 212 }, %struct.item { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 0, i32 2, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @main.base_hardware, i32 0, i32 0), i32 517 }, %struct.item { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 4123, i32 144, i32 42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @main.base_hardware, i32 0, i32 0), i32 632 }, %struct.item { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 17, i32 14, i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @main.base_grocery, i32 0, i32 0), i32 2331 }, %struct.item zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [5 x i8] c"fish\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"in-stock\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Number of items in stock\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Name of the item\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"on-order\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Number of items on order\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"sku\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Stock Keeping Unit\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"sold\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Number of items sold\00", align 1
@__const.main.info = private unnamed_addr constant [6 x %struct.TYPE_3__] [%struct.TYPE_3__ { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0) }, %struct.TYPE_3__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0) }, %struct.TYPE_3__ { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0) }, %struct.TYPE_3__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0) }, %struct.TYPE_3__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0) }, %struct.TYPE_3__ zeroinitializer], align 16
@.str.18 = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@XO_STYLE_XML = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"json\00", align 1
@XO_STYLE_JSON = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@XO_STYLE_TEXT = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@XO_STYLE_HTML = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [7 x i8] c"pretty\00", align 1
@XOF_PRETTY = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"xpath\00", align 1
@XOF_XPATH = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@XOF_INFO = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"error detected\00", align 1
@XOF_KEYS = common dso_local global i32 0, align 4
@XOF_COLOR = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"3.1.4\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"test2\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"value2\00", align 1
@main.colors = internal global [6 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i8* null], align 16
@.str.35 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"yellow\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"{C:/bg-%s}\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"{C:/fg-%s}{T:/%s}\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"{C:reset}\0A\00", align 1
@.str.43 = private unnamed_addr constant [122 x i8] c"{C:bold}{:data} {C:underline}{:data} {C:inverse}{:data} {C:no-bold}{:data} {C:no-inverse}{:data} {C:no-underline}{:data}\0A\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"bold\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"bold-ul\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"triple\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"inv-ul\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"underline\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"plain\00", align 1
@.str.50 = private unnamed_addr constant [126 x i8] c"{T:Item/%-10s}{C:bold,underline}{T:Total Sold/%12s}{C:no-bold}{T:In Stock/%12s}{C:/%s}{T:On Order/%12s}{C:normal}{T:SKU/%5s}\0A\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"inverse\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"test3\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"value3\00", align 1
@.str.54 = private unnamed_addr constant [170 x i8] c"{keq:sku/%s-%u/%s-000-%u}{k:name/%-10s/%s}{n:sold/%12u/%u}{C:/%s}{:in-stock/%12u/%u}{C:normal}{C:/fg-%s}{:on-order/%12u/%u}{C:/fg-default}{qkd:sku/%5s-000-%u/%s-000-%u}\0A\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.57 = private unnamed_addr constant [26 x i8] c"{keq:sku/%s-%u/%s-000-%u}\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"{L:Item} '{k:name/%s}':\0A\00", align 1
@.str.59 = private unnamed_addr constant [38 x i8] c"{P:   }{L:Total sold}: {n:sold/%u%s}\0A\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c".0\00", align 1
@.str.61 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.62 = private unnamed_addr constant [52 x i8] c"{P:   }{Lcw:In stock}{C:inverse}{:in-stock/%u}{C:}\0A\00", align 1
@.str.63 = private unnamed_addr constant [37 x i8] c"{P:   }{Lcw:On order}{:on-order/%u}\0A\00", align 1
@.str.64 = private unnamed_addr constant [37 x i8] c"{P:   }{L:SKU}: {qkd:sku/%s-000-%u}\0A\00", align 1
@.str.65 = private unnamed_addr constant [75 x i8] c"{P:   }{C:bg-blue   , fg-white, bold   }{L:Total sold}: {n:sold/%u%s}{C:}\0A\00", align 1
@.str.66 = private unnamed_addr constant [37 x i8] c"{P:   }{Lcw:In stock}{:in-stock/%u}\0A\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"test4\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"value4\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"{Lwc:Item}{l:item}\0A\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"X{P:}X\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"epic fail\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"X{T:}X\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"X{N:}X\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"X{L:}X\0A\00", align 1
@.str.75 = private unnamed_addr constant [36 x i8] c"X{P:        }X{Lwc:Cost}{:cost/%u}\0A\00", align 1
@.str.76 = private unnamed_addr constant [33 x i8] c"X{P:/%30s}X{Lwc:Cost}{:cost/%u}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [6 x %struct.item], align 16
  %7 = alloca [2 x %struct.item], align 16
  %8 = alloca %struct.item*, align 8
  %9 = alloca [6 x %struct.TYPE_3__], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = bitcast [6 x %struct.item]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([6 x %struct.item]* @__const.main.list to i8*), i64 240, i1 false)
  %13 = bitcast [2 x %struct.item]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 80, i1 false)
  %14 = bitcast i8* %13 to [2 x %struct.item]*
  %15 = getelementptr inbounds [2 x %struct.item], [2 x %struct.item]* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.item, %struct.item* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8** %16, align 16
  %17 = getelementptr inbounds %struct.item, %struct.item* %15, i32 0, i32 1
  store i32 1321, i32* %17, align 8
  %18 = getelementptr inbounds %struct.item, %struct.item* %15, i32 0, i32 2
  store i32 45, i32* %18, align 4
  %19 = getelementptr inbounds %struct.item, %struct.item* %15, i32 0, i32 3
  store i32 1, i32* %19, align 16
  %20 = getelementptr inbounds %struct.item, %struct.item* %15, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @main.base_grocery, i32 0, i32 0), i8** %20, align 8
  %21 = getelementptr inbounds %struct.item, %struct.item* %15, i32 0, i32 5
  store i32 533, i32* %21, align 16
  %22 = bitcast [6 x %struct.TYPE_3__]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([6 x %struct.TYPE_3__]* @__const.main.info to i8*), i64 144, i1 false)
  store i32 5, i32* %10, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @xo_parse_args(i32 %23, i8** %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %371

29:                                               ; preds = %2
  store i32 1, i32* %4, align 4
  br label %30

30:                                               ; preds = %133, %29
  %31 = load i8**, i8*** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %136

37:                                               ; preds = %30
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @xo_streq(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @XO_STYLE_XML, align 4
  %47 = call i32 @xo_set_style(i32* null, i32 %46)
  br label %132

48:                                               ; preds = %37
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @xo_streq(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* @XO_STYLE_JSON, align 4
  %58 = call i32 @xo_set_style(i32* null, i32 %57)
  br label %131

59:                                               ; preds = %48
  %60 = load i8**, i8*** %5, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @xo_streq(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32, i32* @XO_STYLE_TEXT, align 4
  %69 = call i32 @xo_set_style(i32* null, i32 %68)
  br label %130

70:                                               ; preds = %59
  %71 = load i8**, i8*** %5, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @xo_streq(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* @XO_STYLE_HTML, align 4
  %80 = call i32 @xo_set_style(i32* null, i32 %79)
  br label %129

81:                                               ; preds = %70
  %82 = load i8**, i8*** %5, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @xo_streq(i8* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i32, i32* @XOF_PRETTY, align 4
  %91 = call i32 @xo_set_flags(i32* null, i32 %90)
  br label %128

92:                                               ; preds = %81
  %93 = load i8**, i8*** %5, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @xo_streq(i8* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load i32, i32* @XOF_XPATH, align 4
  %102 = call i32 @xo_set_flags(i32* null, i32 %101)
  br label %127

103:                                              ; preds = %92
  %104 = load i8**, i8*** %5, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @xo_streq(i8* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load i32, i32* @XOF_INFO, align 4
  %113 = call i32 @xo_set_flags(i32* null, i32 %112)
  br label %126

114:                                              ; preds = %103
  %115 = load i8**, i8*** %5, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @xo_streq(i8* %119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = call i32 @close(i32 -1)
  %124 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %114
  br label %126

126:                                              ; preds = %125, %111
  br label %127

127:                                              ; preds = %126, %100
  br label %128

128:                                              ; preds = %127, %89
  br label %129

129:                                              ; preds = %128, %78
  br label %130

130:                                              ; preds = %129, %67
  br label %131

131:                                              ; preds = %130, %56
  br label %132

132:                                              ; preds = %131, %45
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %4, align 4
  br label %30

136:                                              ; preds = %30
  %137 = getelementptr inbounds [6 x %struct.TYPE_3__], [6 x %struct.TYPE_3__]* %9, i64 0, i64 0
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @xo_set_info(i32* null, %struct.TYPE_3__* %137, i32 %138)
  %140 = load i32, i32* @XOF_KEYS, align 4
  %141 = call i32 @xo_set_flags(i32* null, i32 %140)
  %142 = load i32, i32* @XOF_COLOR, align 4
  %143 = call i32 @xo_set_flags(i32* null, i32 %142)
  %144 = call i32 @xo_set_version(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  %145 = call i32 @xo_open_container_h(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0))
  %146 = call i32 @xo_attr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0))
  %147 = call i32 @xo_open_container(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %148 = call i32 @xo_open_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  %149 = call i32 @xo_attr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %150

150:                                              ; preds = %176, %136
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [6 x i8*], [6 x i8*]* @main.colors, i64 0, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %179

156:                                              ; preds = %150
  %157 = load i32, i32* %11, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %156
  %160 = load i32, i32* %11, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [6 x i8*], [6 x i8*]* @main.colors, i64 0, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0), i8* %164)
  br label %166

166:                                              ; preds = %159, %156
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [6 x i8*], [6 x i8*]* @main.colors, i64 0, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [6 x i8*], [6 x i8*]* @main.colors, i64 0, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i64 0, i64 0), i8* %170, i8* %174)
  br label %176

176:                                              ; preds = %166
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %11, align 4
  br label %150

179:                                              ; preds = %150
  %180 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0))
  %181 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0))
  %182 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i64 0, i64 0))
  %183 = getelementptr inbounds [6 x %struct.item], [6 x %struct.item]* %6, i64 0, i64 0
  store %struct.item* %183, %struct.item** %8, align 8
  br label %184

184:                                              ; preds = %230, %179
  %185 = load %struct.item*, %struct.item** %8, align 8
  %186 = getelementptr inbounds %struct.item, %struct.item* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %233

189:                                              ; preds = %184
  %190 = call i32 @xo_open_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  %191 = call i32 @xo_attr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0))
  %192 = load %struct.item*, %struct.item** %8, align 8
  %193 = getelementptr inbounds %struct.item, %struct.item* %192, i32 0, i32 4
  %194 = load i8*, i8** %193, align 8
  %195 = load %struct.item*, %struct.item** %8, align 8
  %196 = getelementptr inbounds %struct.item, %struct.item* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.item*, %struct.item** %8, align 8
  %199 = getelementptr inbounds %struct.item, %struct.item* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.item*, %struct.item** %8, align 8
  %202 = getelementptr inbounds %struct.item, %struct.item* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.item*, %struct.item** %8, align 8
  %205 = getelementptr inbounds %struct.item, %struct.item* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = icmp slt i32 %206, 5
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0)
  %210 = load %struct.item*, %struct.item** %8, align 8
  %211 = getelementptr inbounds %struct.item, %struct.item* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.item*, %struct.item** %8, align 8
  %214 = getelementptr inbounds %struct.item, %struct.item* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = icmp sgt i32 %215, 5
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0)
  %219 = load %struct.item*, %struct.item** %8, align 8
  %220 = getelementptr inbounds %struct.item, %struct.item* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.item*, %struct.item** %8, align 8
  %223 = getelementptr inbounds %struct.item, %struct.item* %222, i32 0, i32 4
  %224 = load i8*, i8** %223, align 8
  %225 = load %struct.item*, %struct.item** %8, align 8
  %226 = getelementptr inbounds %struct.item, %struct.item* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 8
  %228 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([170 x i8], [170 x i8]* @.str.54, i64 0, i64 0), i8* %194, i32 %197, i8* %200, i32 %203, i8* %209, i32 %212, i8* %218, i32 %221, i8* %224, i32 %227)
  %229 = call i32 @xo_close_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  br label %230

230:                                              ; preds = %189
  %231 = load %struct.item*, %struct.item** %8, align 8
  %232 = getelementptr inbounds %struct.item, %struct.item* %231, i32 1
  store %struct.item* %232, %struct.item** %8, align 8
  br label %184

233:                                              ; preds = %184
  %234 = call i32 @xo_close_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  %235 = call i32 @xo_close_container(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %236 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0))
  %237 = call i32 @xo_open_container(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %238 = call i32 @xo_open_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  %239 = getelementptr inbounds [6 x %struct.item], [6 x %struct.item]* %6, i64 0, i64 0
  store %struct.item* %239, %struct.item** %8, align 8
  br label %240

240:                                              ; preds = %284, %233
  %241 = load %struct.item*, %struct.item** %8, align 8
  %242 = getelementptr inbounds %struct.item, %struct.item* %241, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %287

245:                                              ; preds = %240
  %246 = call i32 @xo_open_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  %247 = load %struct.item*, %struct.item** %8, align 8
  %248 = getelementptr inbounds %struct.item, %struct.item* %247, i32 0, i32 4
  %249 = load i8*, i8** %248, align 8
  %250 = load %struct.item*, %struct.item** %8, align 8
  %251 = getelementptr inbounds %struct.item, %struct.item* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 8
  %253 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.57, i64 0, i64 0), i8* %249, i32 %252)
  %254 = load %struct.item*, %struct.item** %8, align 8
  %255 = getelementptr inbounds %struct.item, %struct.item* %254, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.58, i64 0, i64 0), i8* %256)
  %258 = load %struct.item*, %struct.item** %8, align 8
  %259 = getelementptr inbounds %struct.item, %struct.item* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.item*, %struct.item** %8, align 8
  %262 = getelementptr inbounds %struct.item, %struct.item* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = icmp ne i32 %263, 0
  %265 = zext i1 %264 to i64
  %266 = select i1 %264, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.61, i64 0, i64 0)
  %267 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.59, i64 0, i64 0), i32 %260, i8* %266)
  %268 = load %struct.item*, %struct.item** %8, align 8
  %269 = getelementptr inbounds %struct.item, %struct.item* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.62, i64 0, i64 0), i32 %270)
  %272 = load %struct.item*, %struct.item** %8, align 8
  %273 = getelementptr inbounds %struct.item, %struct.item* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 8
  %275 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.63, i64 0, i64 0), i32 %274)
  %276 = load %struct.item*, %struct.item** %8, align 8
  %277 = getelementptr inbounds %struct.item, %struct.item* %276, i32 0, i32 4
  %278 = load i8*, i8** %277, align 8
  %279 = load %struct.item*, %struct.item** %8, align 8
  %280 = getelementptr inbounds %struct.item, %struct.item* %279, i32 0, i32 5
  %281 = load i32, i32* %280, align 8
  %282 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.64, i64 0, i64 0), i8* %278, i32 %281)
  %283 = call i32 @xo_close_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  br label %284

284:                                              ; preds = %245
  %285 = load %struct.item*, %struct.item** %8, align 8
  %286 = getelementptr inbounds %struct.item, %struct.item* %285, i32 1
  store %struct.item* %286, %struct.item** %8, align 8
  br label %240

287:                                              ; preds = %240
  %288 = call i32 @xo_close_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  %289 = call i32 @xo_close_container(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %290 = call i32 @xo_open_container(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %291 = call i32 @xo_open_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  %292 = getelementptr inbounds [2 x %struct.item], [2 x %struct.item]* %7, i64 0, i64 0
  store %struct.item* %292, %struct.item** %8, align 8
  br label %293

293:                                              ; preds = %337, %287
  %294 = load %struct.item*, %struct.item** %8, align 8
  %295 = getelementptr inbounds %struct.item, %struct.item* %294, i32 0, i32 0
  %296 = load i8*, i8** %295, align 8
  %297 = icmp ne i8* %296, null
  br i1 %297, label %298, label %340

298:                                              ; preds = %293
  %299 = call i32 @xo_open_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  %300 = load %struct.item*, %struct.item** %8, align 8
  %301 = getelementptr inbounds %struct.item, %struct.item* %300, i32 0, i32 4
  %302 = load i8*, i8** %301, align 8
  %303 = load %struct.item*, %struct.item** %8, align 8
  %304 = getelementptr inbounds %struct.item, %struct.item* %303, i32 0, i32 5
  %305 = load i32, i32* %304, align 8
  %306 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.57, i64 0, i64 0), i8* %302, i32 %305)
  %307 = load %struct.item*, %struct.item** %8, align 8
  %308 = getelementptr inbounds %struct.item, %struct.item* %307, i32 0, i32 0
  %309 = load i8*, i8** %308, align 8
  %310 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.58, i64 0, i64 0), i8* %309)
  %311 = load %struct.item*, %struct.item** %8, align 8
  %312 = getelementptr inbounds %struct.item, %struct.item* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.item*, %struct.item** %8, align 8
  %315 = getelementptr inbounds %struct.item, %struct.item* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = icmp ne i32 %316, 0
  %318 = zext i1 %317 to i64
  %319 = select i1 %317, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.61, i64 0, i64 0)
  %320 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.65, i64 0, i64 0), i32 %313, i8* %319)
  %321 = load %struct.item*, %struct.item** %8, align 8
  %322 = getelementptr inbounds %struct.item, %struct.item* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.66, i64 0, i64 0), i32 %323)
  %325 = load %struct.item*, %struct.item** %8, align 8
  %326 = getelementptr inbounds %struct.item, %struct.item* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 8
  %328 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.63, i64 0, i64 0), i32 %327)
  %329 = load %struct.item*, %struct.item** %8, align 8
  %330 = getelementptr inbounds %struct.item, %struct.item* %329, i32 0, i32 4
  %331 = load i8*, i8** %330, align 8
  %332 = load %struct.item*, %struct.item** %8, align 8
  %333 = getelementptr inbounds %struct.item, %struct.item* %332, i32 0, i32 5
  %334 = load i32, i32* %333, align 8
  %335 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.64, i64 0, i64 0), i8* %331, i32 %334)
  %336 = call i32 @xo_close_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  br label %337

337:                                              ; preds = %298
  %338 = load %struct.item*, %struct.item** %8, align 8
  %339 = getelementptr inbounds %struct.item, %struct.item* %338, i32 1
  store %struct.item* %339, %struct.item** %8, align 8
  br label %293

340:                                              ; preds = %293
  %341 = call i32 @xo_close_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  %342 = call i32 @xo_close_container(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %343 = call i32 @xo_open_container(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %344 = call i32 @xo_open_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  %345 = getelementptr inbounds [6 x %struct.item], [6 x %struct.item]* %6, i64 0, i64 0
  store %struct.item* %345, %struct.item** %8, align 8
  br label %346

346:                                              ; preds = %357, %340
  %347 = load %struct.item*, %struct.item** %8, align 8
  %348 = getelementptr inbounds %struct.item, %struct.item* %347, i32 0, i32 0
  %349 = load i8*, i8** %348, align 8
  %350 = icmp ne i8* %349, null
  br i1 %350, label %351, label %360

351:                                              ; preds = %346
  %352 = call i32 @xo_attr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i64 0, i64 0))
  %353 = load %struct.item*, %struct.item** %8, align 8
  %354 = getelementptr inbounds %struct.item, %struct.item* %353, i32 0, i32 0
  %355 = load i8*, i8** %354, align 8
  %356 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i64 0, i64 0), i8* %355)
  br label %357

357:                                              ; preds = %351
  %358 = load %struct.item*, %struct.item** %8, align 8
  %359 = getelementptr inbounds %struct.item, %struct.item* %358, i32 1
  store %struct.item* %359, %struct.item** %8, align 8
  br label %346

360:                                              ; preds = %346
  %361 = call i32 @xo_close_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  %362 = call i32 @xo_close_container(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %363 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0))
  %364 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0))
  %365 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0))
  %366 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0))
  %367 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.75, i64 0, i64 0), i32 425)
  %368 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.61, i64 0, i64 0), i32 455)
  %369 = call i32 @xo_close_container_h(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0))
  %370 = call i32 (...) @xo_finish()
  store i32 0, i32* %3, align 4
  br label %371

371:                                              ; preds = %360, %28
  %372 = load i32, i32* %3, align 4
  ret i32 %372
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @xo_parse_args(i32, i8**) #2

declare dso_local i64 @xo_streq(i8*, i8*) #2

declare dso_local i32 @xo_set_style(i32*, i32) #2

declare dso_local i32 @xo_set_flags(i32*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @xo_err(i32, i8*) #2

declare dso_local i32 @xo_set_info(i32*, %struct.TYPE_3__*, i32) #2

declare dso_local i32 @xo_set_version(i8*) #2

declare dso_local i32 @xo_open_container_h(i32*, i8*) #2

declare dso_local i32 @xo_attr(i8*, i8*) #2

declare dso_local i32 @xo_open_container(i8*) #2

declare dso_local i32 @xo_open_list(i8*) #2

declare dso_local i32 @xo_emit(i8*, ...) #2

declare dso_local i32 @xo_open_instance(i8*) #2

declare dso_local i32 @xo_close_instance(i8*) #2

declare dso_local i32 @xo_close_list(i8*) #2

declare dso_local i32 @xo_close_container(i8*) #2

declare dso_local i32 @xo_close_container_h(i32*, i8*) #2

declare dso_local i32 @xo_finish(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
