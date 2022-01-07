; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/extr_fbt.c_fbt_type_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/extr_fbt.c_fbt_type_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64*, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@CTF_ERR = common dso_local global i32 0, align 4
@CTF_PREC_POINTER = common dso_local global i64 0, align 8
@CTF_PREC_ARRAY = common dso_local global i64 0, align 8
@CTF_PREC_BASE = common dso_local global i64 0, align 8
@CTF_PREC_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"[%u]\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"struct %s\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"union %s\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"enum %s\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"restrict\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i64)* @fbt_type_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbt_type_name(i32* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @CTF_ERR, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 -1, i32* %5, align 4
  br label %174

27:                                               ; preds = %22, %4
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @ctf_decl_init(%struct.TYPE_12__* %10, i8* %28, i64 %29)
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ctf_decl_push(%struct.TYPE_12__* %10, i32* %31, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = call i32 @ctf_decl_fini(%struct.TYPE_12__* %10)
  store i32 -1, i32* %5, align 4
  br label %174

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* @CTF_PREC_POINTER, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CTF_PREC_POINTER, align 8
  %46 = icmp ugt i64 %44, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %15, align 4
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @CTF_PREC_ARRAY, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CTF_PREC_ARRAY, align 8
  %54 = icmp ugt i64 %52, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %39
  %59 = load i64, i64* @CTF_PREC_ARRAY, align 8
  br label %68

60:                                               ; preds = %39
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i64, i64* @CTF_PREC_POINTER, align 8
  br label %66

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i64 [ %64, %63 ], [ -1, %65 ]
  br label %68

68:                                               ; preds = %66, %58
  %69 = phi i64 [ %59, %58 ], [ %67, %66 ]
  store i64 %69, i64* %14, align 8
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i64, i64* @CTF_PREC_POINTER, align 8
  br label %82

74:                                               ; preds = %68
  %75 = load i32, i32* %16, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i64, i64* @CTF_PREC_ARRAY, align 8
  br label %80

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79, %77
  %81 = phi i64 [ %78, %77 ], [ -1, %79 ]
  br label %82

82:                                               ; preds = %80, %72
  %83 = phi i64 [ %73, %72 ], [ %81, %80 ]
  store i64 %83, i64* %13, align 8
  store i32 133, i32* %17, align 4
  %84 = load i64, i64* @CTF_PREC_BASE, align 8
  store i64 %84, i64* %12, align 8
  br label %85

85:                                               ; preds = %167, %82
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @CTF_PREC_MAX, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %170

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 3
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = load i64, i64* %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i64 %92
  %94 = call %struct.TYPE_13__* @ctf_list_next(%struct.TYPE_13__* %93)
  store %struct.TYPE_13__* %94, %struct.TYPE_13__** %11, align 8
  br label %95

95:                                               ; preds = %157, %89
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %97 = icmp ne %struct.TYPE_13__* %96, null
  br i1 %97, label %98, label %160

98:                                               ; preds = %95
  %99 = load i32*, i32** %6, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call %struct.TYPE_11__* @ctf_lookup_by_id(i32* %99, i32 %102)
  store %struct.TYPE_11__* %103, %struct.TYPE_11__** %18, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @ctf_strptr(i32* %104, i32 %107)
  store i8* %108, i8** %19, align 8
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 133
  br i1 %110, label %111, label %116

111:                                              ; preds = %98
  %112 = load i32, i32* %17, align 4
  %113 = icmp ne i32 %112, 140
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %111, %98
  %117 = load i64, i64* %13, align 8
  %118 = load i64, i64* %12, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i64 -1, i64* %13, align 8
  br label %122

122:                                              ; preds = %120, %116
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  switch i32 %125, label %153 [
    i32 134, label %126
    i32 137, label %126
    i32 130, label %126
    i32 133, label %129
    i32 140, label %131
    i32 135, label %136
    i32 131, label %138
    i32 136, label %138
    i32 129, label %141
    i32 138, label %144
    i32 128, label %147
    i32 139, label %149
    i32 132, label %151
  ]

126:                                              ; preds = %122, %122, %122
  %127 = load i8*, i8** %19, align 8
  %128 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %127)
  br label %153

129:                                              ; preds = %122
  %130 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %153

131:                                              ; preds = %122
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  br label %153

136:                                              ; preds = %122
  %137 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %153

138:                                              ; preds = %122, %122
  %139 = load i8*, i8** %19, align 8
  %140 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %139)
  br label %153

141:                                              ; preds = %122
  %142 = load i8*, i8** %19, align 8
  %143 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %142)
  br label %153

144:                                              ; preds = %122
  %145 = load i8*, i8** %19, align 8
  %146 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %145)
  br label %153

147:                                              ; preds = %122
  %148 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %153

149:                                              ; preds = %122
  %150 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %153

151:                                              ; preds = %122
  %152 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %153

153:                                              ; preds = %122, %151, %149, %147, %144, %141, %138, %136, %131, %129, %126
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %17, align 4
  br label %157

157:                                              ; preds = %153
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %159 = call %struct.TYPE_13__* @ctf_list_next(%struct.TYPE_13__* %158)
  store %struct.TYPE_13__* %159, %struct.TYPE_13__** %11, align 8
  br label %95

160:                                              ; preds = %95
  %161 = load i64, i64* %14, align 8
  %162 = load i64, i64* %12, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %160
  br label %167

167:                                              ; preds = %166
  %168 = load i64, i64* %12, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %12, align 8
  br label %85

170:                                              ; preds = %85
  %171 = call i32 @ctf_decl_fini(%struct.TYPE_12__* %10)
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %170, %37, %26
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local i32 @ctf_decl_init(%struct.TYPE_12__*, i8*, i64) #1

declare dso_local i32 @ctf_decl_push(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @ctf_decl_fini(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @ctf_list_next(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_11__* @ctf_lookup_by_id(i32*, i32) #1

declare dso_local i8* @ctf_strptr(i32*, i32) #1

declare dso_local i32 @ctf_decl_sprintf(%struct.TYPE_12__*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
