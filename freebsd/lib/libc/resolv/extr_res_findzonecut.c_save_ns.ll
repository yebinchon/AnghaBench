; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_findzonecut.c_save_ns.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_findzonecut.c_save_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i64, i32 }

@MAXDNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"save_ns: ns_parserr(%s, %d) failed\00", align 1
@ns_o_query = common dso_local global i32 0, align 4
@ns_t_ns = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"save_ns: malloc failed\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"save_ns: ns_name_uncompress failed\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"save_ns: strdup failed\00", align 1
@link = common dso_local global i32 0, align 4
@ns_s_ar = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"save_ns: save_r('%s', %s) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i8*, i64, i32, i32*)* @save_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_ns(i32 %0, i32* %1, i32 %2, i8* %3, i64 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_8__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %16, align 4
  br label %23

23:                                               ; preds = %148, %7
  %24 = load i32, i32* %16, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @ns_msg_count(i32 %26, i32 %27)
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %151

30:                                               ; preds = %23
  %31 = load i32, i32* @MAXDNAME, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %17, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %18, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %16, align 4
  %38 = call i64 @ns_parserr(i32* %35, i32 %36, i32 %37, i32* %21)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @ns_o_query, align 4
  %43 = call i32 @p_section(i32 %41, i32 %42)
  %44 = load i32, i32* %16, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @DPRINTF(i8* %46)
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %144

48:                                               ; preds = %30
  %49 = load i32, i32* %21, align 4
  %50 = call i64 @ns_rr_type(i32 %49)
  %51 = load i64, i64* @ns_t_ns, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %64, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %21, align 4
  %55 = call i64 @ns_rr_class(i32 %54)
  %56 = load i64, i64* %13, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %21, align 4
  %60 = call i32 @ns_rr_name(i32 %59)
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 @ns_samename(i32 %60, i8* %61)
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %58, %53, %48
  store i32 4, i32* %22, align 4
  br label %144

65:                                               ; preds = %58
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* %21, align 4
  %68 = call i32 @ns_rr_name(i32 %67)
  %69 = call %struct.TYPE_8__* @find_ns(i32* %66, i32 %68)
  store %struct.TYPE_8__* %69, %struct.TYPE_8__** %20, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %71 = icmp eq %struct.TYPE_8__* %70, null
  br i1 %71, label %72, label %122

72:                                               ; preds = %65
  %73 = call %struct.TYPE_8__* @malloc(i32 24)
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %20, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %75 = icmp eq %struct.TYPE_8__* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %144

78:                                               ; preds = %72
  %79 = load i32, i32* %21, align 4
  %80 = call i32* @ns_rr_rdata(i32 %79)
  store i32* %80, i32** %19, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ns_msg_base(i32 %82)
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ns_msg_end(i32 %85)
  %87 = load i32*, i32** %19, align 8
  %88 = trunc i64 %32 to i32
  %89 = call i64 @ns_name_uncompress(i32 %83, i32 %86, i32* %87, i8* %34, i32 %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %78
  %92 = call i32 @DPRINTF(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %94 = call i32 @free(%struct.TYPE_8__* %93)
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %144

95:                                               ; preds = %78
  %96 = call i32* @strdup(i8* %34)
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  store i32* %96, i32** %98, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = call i32 @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %106 = call i32 @free(%struct.TYPE_8__* %105)
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %144

107:                                              ; preds = %95
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %109 = load i32, i32* @link, align 4
  %110 = call i32 @INIT_LINK(%struct.TYPE_8__* %108, i32 %109)
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @INIT_LIST(i32 %113)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  store i64 0, i64* %116, align 8
  %117 = load i32*, i32** %15, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %120 = load i32, i32* @link, align 4
  %121 = call i32 @APPEND(i32 %118, %struct.TYPE_8__* %119, i32 %120)
  br label %122

122:                                              ; preds = %107, %65
  %123 = load i32, i32* %9, align 4
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* @ns_s_ar, align 4
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* %13, align 8
  %130 = load i32, i32* %14, align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %132 = call i64 @save_a(i32 %123, i32* %124, i32 %125, i32* %128, i64 %129, i32 %130, %struct.TYPE_8__* %131)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %122
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i64, i64* %13, align 8
  %139 = call i32 @p_class(i64 %138)
  %140 = sext i32 %139 to i64
  %141 = inttoptr i64 %140 to i8*
  %142 = call i32 @DPRINTF(i8* %141)
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %144

143:                                              ; preds = %122
  store i32 0, i32* %22, align 4
  br label %144

144:                                              ; preds = %143, %134, %103, %91, %76, %64, %40
  %145 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %145)
  %146 = load i32, i32* %22, align 4
  switch i32 %146, label %154 [
    i32 0, label %147
    i32 1, label %152
    i32 4, label %148
  ]

147:                                              ; preds = %144
  br label %148

148:                                              ; preds = %147, %144
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %16, align 4
  br label %23

151:                                              ; preds = %23
  store i32 0, i32* %8, align 4
  br label %152

152:                                              ; preds = %151, %144
  %153 = load i32, i32* %8, align 4
  ret i32 %153

154:                                              ; preds = %144
  unreachable
}

declare dso_local i32 @ns_msg_count(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @ns_parserr(i32*, i32, i32, i32*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @p_section(i32, i32) #1

declare dso_local i64 @ns_rr_type(i32) #1

declare dso_local i64 @ns_rr_class(i32) #1

declare dso_local i32 @ns_samename(i32, i8*) #1

declare dso_local i32 @ns_rr_name(i32) #1

declare dso_local %struct.TYPE_8__* @find_ns(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i32* @ns_rr_rdata(i32) #1

declare dso_local i64 @ns_name_uncompress(i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @ns_msg_base(i32) #1

declare dso_local i32 @ns_msg_end(i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @INIT_LINK(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @INIT_LIST(i32) #1

declare dso_local i32 @APPEND(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @save_a(i32, i32*, i32, i32*, i64, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @p_class(i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
