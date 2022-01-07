; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-forces.c_pdata_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-forces.c_pdata_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.pathdata_h = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"\0A%sPathdata: Flags 0x%x ID count %d\0A\00", align 1
@F_SELKEY = common dso_local global i32 0, align 4
@B_KEYIN = common dso_local global i32 0, align 4
@F_SELTABRANGE = common dso_local global i32 0, align 4
@B_TRNG = common dso_local global i32 0, align 4
@F_TABAPPEND = common dso_local global i32 0, align 4
@B_APPND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"\09\09\09truncated IDs expected %uB got %uB\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"\09\09\09ID Data[\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\09\09\09Illegal to have both Table ranges and keys\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32, i32, i32)* @pdata_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdata_print(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pathdata_h*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = bitcast i32* %18 to %struct.pathdata_h*
  store %struct.pathdata_h* %19, %struct.pathdata_h** %12, align 8
  %20 = load i32, i32* %11, align 4
  %21 = call i8* @indent_pr(i32 %20, i32 0)
  store i8* %21, i8** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load %struct.pathdata_h*, %struct.pathdata_h** %12, align 8
  %23 = bitcast %struct.pathdata_h* %22 to i64*
  %24 = load i64, i64* %23, align 4
  %25 = call i32 @ND_TCHECK(i64 %24)
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %27, 8
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  br label %148

30:                                               ; preds = %5
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %33, 3
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load %struct.pathdata_h*, %struct.pathdata_h** %12, align 8
  %39 = getelementptr inbounds %struct.pathdata_h, %struct.pathdata_h* %38, i32 0, i32 1
  %40 = call i32 @EXTRACT_16BITS(i32* %39)
  %41 = load %struct.pathdata_h*, %struct.pathdata_h** %12, align 8
  %42 = getelementptr inbounds %struct.pathdata_h, %struct.pathdata_h* %41, i32 0, i32 0
  %43 = call i32 @EXTRACT_16BITS(i32* %42)
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to %struct.TYPE_7__*
  %46 = call i32 @ND_PRINT(%struct.TYPE_7__* %45)
  br label %47

47:                                               ; preds = %35, %30
  %48 = load %struct.pathdata_h*, %struct.pathdata_h** %12, align 8
  %49 = getelementptr inbounds %struct.pathdata_h, %struct.pathdata_h* %48, i32 0, i32 1
  %50 = call i32 @EXTRACT_16BITS(i32* %49)
  %51 = load i32, i32* @F_SELKEY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* @B_KEYIN, align 4
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %54, %47
  %59 = load %struct.pathdata_h*, %struct.pathdata_h** %12, align 8
  %60 = getelementptr inbounds %struct.pathdata_h, %struct.pathdata_h* %59, i32 0, i32 1
  %61 = call i32 @EXTRACT_16BITS(i32* %60)
  %62 = load i32, i32* @F_SELTABRANGE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @B_TRNG, align 4
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %65, %58
  %70 = load %struct.pathdata_h*, %struct.pathdata_h** %12, align 8
  %71 = getelementptr inbounds %struct.pathdata_h, %struct.pathdata_h* %70, i32 0, i32 1
  %72 = call i32 @EXTRACT_16BITS(i32* %71)
  %73 = load i32, i32* @F_TABAPPEND, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i32, i32* @B_APPND, align 4
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %76, %69
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 8
  store i32* %82, i32** %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 %84, 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %9, align 4
  %87 = load %struct.pathdata_h*, %struct.pathdata_h** %12, align 8
  %88 = getelementptr inbounds %struct.pathdata_h, %struct.pathdata_h* %87, i32 0, i32 0
  %89 = call i32 @EXTRACT_16BITS(i32* %88)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = mul nsw i32 %90, 4
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %80
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to %struct.TYPE_7__*
  %101 = call i32 @ND_PRINT(%struct.TYPE_7__* %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @hex_print_with_offset(%struct.TYPE_7__* %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %103, i32 %104, i32 0)
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %107 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([3 x i8]* @.str.3 to %struct.TYPE_7__*))
  store i32 -1, i32* %6, align 4
  br label %154

108:                                              ; preds = %80
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @B_TRNG, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @B_KEYIN, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %120 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([47 x i8]* @.str.4 to %struct.TYPE_7__*))
  store i32 -1, i32* %6, align 4
  br label %154

121:                                              ; preds = %113, %108
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @pdatacnt_print(%struct.TYPE_7__* %122, i32* %123, i32 %124, i32 %125, i32 %126, i32 %127)
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %15, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %121
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %15, align 4
  %134 = sub nsw i32 %132, %133
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* %17, align 4
  %136 = load i32*, i32** %8, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32* %138, i32** %8, align 8
  %139 = load i32, i32* %15, align 4
  store i32 %139, i32* %9, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %141 = load i32*, i32** %8, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  %146 = call i32 @recpdoptlv_print(%struct.TYPE_7__* %140, i32* %141, i32 %142, i32 %143, i32 %145)
  store i32 %146, i32* %6, align 4
  br label %154

147:                                              ; preds = %121
  store i32 0, i32* %6, align 4
  br label %154

148:                                              ; preds = %29
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %150 = load i32, i32* @tstr, align 4
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to %struct.TYPE_7__*
  %153 = call i32 @ND_PRINT(%struct.TYPE_7__* %152)
  store i32 -1, i32* %6, align 4
  br label %154

154:                                              ; preds = %148, %147, %131, %118, %95
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

declare dso_local i8* @indent_pr(i32, i32) #1

declare dso_local i32 @ND_TCHECK(i64) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @hex_print_with_offset(%struct.TYPE_7__*, i8*, i32*, i32, i32) #1

declare dso_local i32 @pdatacnt_print(%struct.TYPE_7__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @recpdoptlv_print(%struct.TYPE_7__*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
