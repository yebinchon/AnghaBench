; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_find_symdef.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_find_symdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64, i8*, i32, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { %struct.TYPE_21__*, %struct.TYPE_22__* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_22__*, i32*, %struct.TYPE_18__* }

@STB_LOCAL = common dso_local global i64 0, align 8
@STT_SECTION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"%s: Bogus symbol table entry %lu\00", align 1
@STB_WEAK = common dso_local global i64 0, align 8
@sym_zero = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@obj_main = common dso_local global %struct.TYPE_21__* null, align 8
@obj_rtld = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: Undefined symbol \22%s%s%s\22\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @find_symdef(i64 %0, %struct.TYPE_21__* %1, %struct.TYPE_21__** %2, i32 %3, %struct.TYPE_20__* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_21__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca %struct.TYPE_19__, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_21__** %2, %struct.TYPE_21__*** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_20__* %4, %struct.TYPE_20__** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  br label %163

27:                                               ; preds = %6
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %29 = icmp ne %struct.TYPE_20__* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %36 = icmp ne %struct.TYPE_22__* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %41, align 8
  %43 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %10, align 8
  store %struct.TYPE_21__* %42, %struct.TYPE_21__** %43, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %47, align 8
  store %struct.TYPE_22__* %48, %struct.TYPE_22__** %7, align 8
  br label %163

49:                                               ; preds = %30, %27
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i64 %53
  store %struct.TYPE_22__* %54, %struct.TYPE_22__** %14, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  store i8* %62, i8** %19, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %15, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %16, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %17, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @ELF_ST_BIND(i32 %65)
  %67 = load i64, i64* @STB_LOCAL, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %103

69:                                               ; preds = %49
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @ELF_ST_TYPE(i32 %72)
  %74 = load i64, i64* @STT_SECTION, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = call i32 (i8*, i32, ...) @_rtld_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %79, i64 %80)
  br label %82

82:                                               ; preds = %76, %69
  %83 = load i8*, i8** %19, align 8
  %84 = call i32 @symlook_init(%struct.TYPE_19__* %18, i8* %83)
  %85 = load i32, i32* %11, align 4
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  store i32 %85, i32* %86, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call %struct.TYPE_18__* @fetch_ventry(%struct.TYPE_21__* %87, i64 %88)
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 4
  store %struct.TYPE_18__* %89, %struct.TYPE_18__** %90, align 8
  store %struct.TYPE_18__* %89, %struct.TYPE_18__** %17, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 3
  store i32* %91, i32** %92, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %94 = call i32 @symlook_default(%struct.TYPE_19__* %18, %struct.TYPE_21__* %93)
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* %20, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %82
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 2
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %98, align 8
  store %struct.TYPE_22__* %99, %struct.TYPE_22__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %100, align 8
  store %struct.TYPE_21__* %101, %struct.TYPE_21__** %16, align 8
  br label %102

102:                                              ; preds = %97, %82
  br label %106

103:                                              ; preds = %49
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  store %struct.TYPE_22__* %104, %struct.TYPE_22__** %15, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_21__* %105, %struct.TYPE_21__** %16, align 8
  br label %106

106:                                              ; preds = %103, %102
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %108 = icmp eq %struct.TYPE_22__* %107, null
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @ELF_ST_BIND(i32 %112)
  %114 = load i64, i64* @STB_WEAK, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  store %struct.TYPE_22__* @sym_zero, %struct.TYPE_22__** %15, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** @obj_main, align 8
  store %struct.TYPE_21__* %117, %struct.TYPE_21__** %16, align 8
  br label %118

118:                                              ; preds = %116, %109, %106
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %120 = icmp ne %struct.TYPE_22__* %119, null
  br i1 %120, label %121, label %138

121:                                              ; preds = %118
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %123 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %10, align 8
  store %struct.TYPE_21__* %122, %struct.TYPE_21__** %123, align 8
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %125 = icmp ne %struct.TYPE_20__* %124, null
  br i1 %125, label %126, label %137

126:                                              ; preds = %121
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %129 = load i64, i64* %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 1
  store %struct.TYPE_22__* %127, %struct.TYPE_22__** %131, align 8
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %134 = load i64, i64* %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  store %struct.TYPE_21__* %132, %struct.TYPE_21__** %136, align 8
  br label %137

137:                                              ; preds = %126, %121
  br label %161

138:                                              ; preds = %118
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %140 = icmp ne %struct.TYPE_21__* %139, @obj_rtld
  br i1 %140, label %141, label %160

141:                                              ; preds = %138
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i8*, i8** %19, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %147 = icmp ne %struct.TYPE_18__* %146, null
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %151 = icmp ne %struct.TYPE_18__* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %141
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  br label %157

156:                                              ; preds = %141
  br label %157

157:                                              ; preds = %156, %152
  %158 = phi i8* [ %155, %152 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %156 ]
  %159 = call i32 (i8*, i32, ...) @_rtld_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %144, i8* %145, i8* %149, i8* %158)
  br label %160

160:                                              ; preds = %157, %138
  br label %161

161:                                              ; preds = %160, %137
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  store %struct.TYPE_22__* %162, %struct.TYPE_22__** %7, align 8
  br label %163

163:                                              ; preds = %161, %37, %26
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  ret %struct.TYPE_22__* %164
}

declare dso_local i64 @ELF_ST_BIND(i32) #1

declare dso_local i64 @ELF_ST_TYPE(i32) #1

declare dso_local i32 @_rtld_error(i8*, i32, ...) #1

declare dso_local i32 @symlook_init(%struct.TYPE_19__*, i8*) #1

declare dso_local %struct.TYPE_18__* @fetch_ventry(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @symlook_default(%struct.TYPE_19__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
