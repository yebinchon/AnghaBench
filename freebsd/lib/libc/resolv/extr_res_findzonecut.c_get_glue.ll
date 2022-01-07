; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_findzonecut.c_get_glue.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_findzonecut.c_get_glue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }

@NS_MAXMSG = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@RR_NS_HAVE_V4 = common dso_local global i32 0, align 4
@ns_t_a = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"get_glue: do_query('%s', %s') failed\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"get_glue: do_query('%s', %s') CNAME or DNAME found\00", align 1
@ns_s_an = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"get_glue: save_r('%s', %s) failed\00", align 1
@RR_NS_HAVE_V6 = common dso_local global i32 0, align 4
@ns_t_aaaa = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"get_glue: removing empty '%s' NS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @get_glue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_glue(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* @NS_MAXMSG, align 4
  %16 = call i32* @malloc(i32 %15)
  store i32* %16, i32** %12, align 8
  %17 = load i32*, i32** %12, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %175

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_7__* @HEAD(i32 %22)
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %10, align 8
  br label %24

24:                                               ; preds = %167, %20
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %169

27:                                               ; preds = %24
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %29 = load i32, i32* @link, align 4
  %30 = call %struct.TYPE_7__* @NEXT(%struct.TYPE_7__* %28, i32 %29)
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %11, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RR_NS_HAVE_V4, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %90

37:                                               ; preds = %27
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @ns_t_a, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @do_query(i32 %38, i32 %41, i32 %42, i32 %43, i32* %44, i32* %13)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %37
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @p_class(i32 %52)
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 @DPRINTF(i8* %55)
  br label %172

57:                                               ; preds = %37
  %58 = load i32, i32* %14, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @p_class(i32 %64)
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 @DPRINTF(i8* %67)
  br label %69

69:                                               ; preds = %60, %57
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @ns_s_an, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %78 = call i64 @save_a(i32 %70, i32* %13, i32 %71, i32 %74, i32 %75, i32 %76, %struct.TYPE_7__* %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %69
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @p_class(i32 %84)
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 @DPRINTF(i8* %87)
  br label %172

89:                                               ; preds = %69
  br label %90

90:                                               ; preds = %89, %27
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @RR_NS_HAVE_V6, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %150

97:                                               ; preds = %90
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @ns_t_aaaa, align 4
  %104 = load i32*, i32** %12, align 8
  %105 = call i32 @do_query(i32 %98, i32 %101, i32 %102, i32 %103, i32* %104, i32* %13)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %97
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @p_class(i32 %112)
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  %116 = call i32 @DPRINTF(i8* %115)
  br label %172

117:                                              ; preds = %97
  %118 = load i32, i32* %14, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @p_class(i32 %124)
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to i8*
  %128 = call i32 @DPRINTF(i8* %127)
  br label %129

129:                                              ; preds = %120, %117
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @ns_s_an, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %138 = call i64 @save_a(i32 %130, i32* %13, i32 %131, i32 %134, i32 %135, i32 %136, %struct.TYPE_7__* %137)
  %139 = icmp slt i64 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %129
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @p_class(i32 %144)
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to i8*
  %148 = call i32 @DPRINTF(i8* %147)
  br label %172

149:                                              ; preds = %129
  br label %150

150:                                              ; preds = %149, %90
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @EMPTY(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %150
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = inttoptr i64 %160 to i8*
  %162 = call i32 @DPRINTF(i8* %161)
  %163 = load i32*, i32** %9, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %165 = call i32 @free_nsrr(i32* %163, %struct.TYPE_7__* %164)
  br label %166

166:                                              ; preds = %156, %150
  br label %167

167:                                              ; preds = %166
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %168, %struct.TYPE_7__** %10, align 8
  br label %24

169:                                              ; preds = %24
  %170 = load i32*, i32** %12, align 8
  %171 = call i32 @free(i32* %170)
  store i32 0, i32* %5, align 4
  br label %175

172:                                              ; preds = %140, %108, %80, %48
  %173 = load i32*, i32** %12, align 8
  %174 = call i32 @free(i32* %173)
  store i32 -1, i32* %5, align 4
  br label %175

175:                                              ; preds = %172, %169, %19
  %176 = load i32, i32* %5, align 4
  ret i32 %176
}

declare dso_local i32* @malloc(i32) #1

declare dso_local %struct.TYPE_7__* @HEAD(i32) #1

declare dso_local %struct.TYPE_7__* @NEXT(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @do_query(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @p_class(i32) #1

declare dso_local i64 @save_a(i32, i32*, i32, i32, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i64 @EMPTY(i32) #1

declare dso_local i32 @free_nsrr(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
