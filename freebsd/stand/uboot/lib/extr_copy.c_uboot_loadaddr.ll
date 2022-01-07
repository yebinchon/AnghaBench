; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_copy.c_uboot_loadaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_copy.c_uboot_loadaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"loader_kernaddr\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"could not retrieve system info\00", align 1
@_start = common dso_local global i64 0, align 8
@KERN_ALIGN = common dso_local global i32 0, align 4
@uboot_heap_end = common dso_local global i64 0, align 8
@MR_ATTR_DRAM = common dso_local global i64 0, align 8
@KERN_MINADDR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Not enough DRAM to load kernel\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @uboot_loadaddr(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sys_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %163

21:                                               ; preds = %3
  %22 = call i8* @ub_env_get(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %18, align 8
  %23 = load i8*, i8** %18, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i8*, i8** %18, align 8
  %27 = call i64 @strtoul(i8* %26, i32* null, i32 16)
  store i64 %27, i64* %4, align 8
  br label %167

28:                                               ; preds = %21
  %29 = call %struct.sys_info* (...) @ub_get_sys_info()
  store %struct.sys_info* %29, %struct.sys_info** %8, align 8
  %30 = icmp eq %struct.sys_info* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %28
  store i64 0, i64* %13, align 8
  store i64 0, i64* %15, align 8
  %34 = load i64, i64* @_start, align 8
  %35 = load i32, i32* @KERN_ALIGN, align 4
  %36 = call i64 @rounddown2(i64 %34, i32 %35)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* @uboot_heap_end, align 8
  %38 = load i32, i32* @KERN_ALIGN, align 4
  %39 = call i64 @roundup2(i64 %37, i32 %38)
  store i64 %39, i64* %12, align 8
  store i32 0, i32* %17, align 4
  br label %40

40:                                               ; preds = %153, %33
  %41 = load i32, i32* %17, align 4
  %42 = load %struct.sys_info*, %struct.sys_info** %8, align 8
  %43 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %156

46:                                               ; preds = %40
  %47 = load %struct.sys_info*, %struct.sys_info** %8, align 8
  %48 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %17, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MR_ATTR_DRAM, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %153

58:                                               ; preds = %46
  %59 = load %struct.sys_info*, %struct.sys_info** %8, align 8
  %60 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @KERN_ALIGN, align 4
  %68 = call i64 @roundup2(i64 %66, i32 %67)
  store i64 %68, i64* %9, align 8
  %69 = load %struct.sys_info*, %struct.sys_info** %8, align 8
  %70 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.sys_info*, %struct.sys_info** %8, align 8
  %78 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %17, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %76, %85
  %87 = load i32, i32* @KERN_ALIGN, align 4
  %88 = call i64 @rounddown2(i64 %86, i32 %87)
  store i64 %88, i64* %10, align 8
  %89 = load i64, i64* %15, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %58
  %92 = load i64, i64* @KERN_MINADDR, align 8
  %93 = load i64, i64* %9, align 8
  %94 = add nsw i64 %93, %92
  store i64 %94, i64* %9, align 8
  br label %95

95:                                               ; preds = %91, %58
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* %9, align 8
  %98 = icmp sge i64 %96, %97
  br i1 %98, label %99, label %122

99:                                               ; preds = %95
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* %10, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %122

103:                                              ; preds = %99
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %9, align 8
  %106 = sub nsw i64 %104, %105
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* %12, align 8
  %109 = sub nsw i64 %107, %108
  %110 = icmp sgt i64 %106, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %103
  %112 = load i64, i64* %9, align 8
  store i64 %112, i64* %14, align 8
  %113 = load i64, i64* %11, align 8
  %114 = load i64, i64* %9, align 8
  %115 = sub nsw i64 %113, %114
  store i64 %115, i64* %16, align 8
  br label %121

116:                                              ; preds = %103
  %117 = load i64, i64* %12, align 8
  store i64 %117, i64* %14, align 8
  %118 = load i64, i64* %10, align 8
  %119 = load i64, i64* %12, align 8
  %120 = sub nsw i64 %118, %119
  store i64 %120, i64* %16, align 8
  br label %121

121:                                              ; preds = %116, %111
  br label %145

122:                                              ; preds = %99, %95
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %9, align 8
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %126, label %143

126:                                              ; preds = %122
  %127 = load i64, i64* %12, align 8
  %128 = load i64, i64* %10, align 8
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %126
  %131 = load i64, i64* %12, align 8
  %132 = load i64, i64* %9, align 8
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i64, i64* %9, align 8
  br label %138

136:                                              ; preds = %130
  %137 = load i64, i64* %12, align 8
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i64 [ %135, %134 ], [ %137, %136 ]
  store i64 %139, i64* %14, align 8
  %140 = load i64, i64* %10, align 8
  %141 = load i64, i64* %14, align 8
  %142 = sub nsw i64 %140, %141
  store i64 %142, i64* %16, align 8
  br label %144

143:                                              ; preds = %126, %122
  store i64 0, i64* %14, align 8
  store i64 0, i64* %16, align 8
  br label %144

144:                                              ; preds = %143, %138
  br label %145

145:                                              ; preds = %144, %121
  %146 = load i64, i64* %15, align 8
  %147 = load i64, i64* %16, align 8
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i64, i64* %14, align 8
  store i64 %150, i64* %13, align 8
  %151 = load i64, i64* %16, align 8
  store i64 %151, i64* %15, align 8
  br label %152

152:                                              ; preds = %149, %145
  br label %153

153:                                              ; preds = %152, %57
  %154 = load i32, i32* %17, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %17, align 4
  br label %40

156:                                              ; preds = %40
  %157 = load i64, i64* %15, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %156
  %162 = load i64, i64* %13, align 8
  store i64 %162, i64* %4, align 8
  br label %167

163:                                              ; preds = %3
  %164 = load i64, i64* %7, align 8
  %165 = load i32, i32* @PAGE_SIZE, align 4
  %166 = call i64 @roundup2(i64 %164, i32 %165)
  store i64 %166, i64* %4, align 8
  br label %167

167:                                              ; preds = %163, %161, %25
  %168 = load i64, i64* %4, align 8
  ret i64 %168
}

declare dso_local i8* @ub_env_get(i8*) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local %struct.sys_info* @ub_get_sys_info(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @rounddown2(i64, i32) #1

declare dso_local i64 @roundup2(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
