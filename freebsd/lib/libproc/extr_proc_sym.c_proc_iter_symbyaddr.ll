; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_sym.c_proc_iter_symbyaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_sym.c_proc_iter_symbyaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_handle = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.file_info = type { %struct.TYPE_8__, i32, %struct.symtab, %struct.symtab }
%struct.TYPE_8__ = type { i64 }
%struct.symtab = type { i64, i32, i32 }
%struct.map_info = type { %struct.TYPE_9__, %struct.file_info* }
%struct.TYPE_9__ = type { i8*, i64 }

@.str = private unnamed_addr constant [42 x i8] c"ERROR: proc_name2map failed to resolve %s\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: failed to open object %s\00", align 1
@PR_SYMTAB = common dso_local global i32 0, align 4
@STB_LOCAL = common dso_local global i64 0, align 8
@BIND_LOCAL = common dso_local global i32 0, align 4
@STB_GLOBAL = common dso_local global i64 0, align 8
@BIND_GLOBAL = common dso_local global i32 0, align 4
@STB_WEAK = common dso_local global i64 0, align 8
@BIND_WEAK = common dso_local global i32 0, align 4
@STT_NOTYPE = common dso_local global i64 0, align 8
@TYPE_NOTYPE = common dso_local global i32 0, align 4
@STT_OBJECT = common dso_local global i64 0, align 8
@TYPE_OBJECT = common dso_local global i32 0, align 4
@STT_FUNC = common dso_local global i64 0, align 8
@TYPE_FUNC = common dso_local global i32 0, align 4
@STT_SECTION = common dso_local global i64 0, align 8
@TYPE_SECTION = common dso_local global i32 0, align 4
@STT_FILE = common dso_local global i64 0, align 8
@TYPE_FILE = common dso_local global i32 0, align 4
@ET_DYN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_iter_symbyaddr(%struct.proc_handle* %0, i8* %1, i32 %2, i32 %3, i32 (i8*, %struct.TYPE_10__*, i8*)** %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.proc_handle*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32 (i8*, %struct.TYPE_10__*, i8*)**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_10__, align 4
  %15 = alloca %struct.file_info*, align 8
  %16 = alloca %struct.map_info*, align 8
  %17 = alloca %struct.symtab*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.proc_handle* %0, %struct.proc_handle** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 (i8*, %struct.TYPE_10__*, i8*)** %4, i32 (i8*, %struct.TYPE_10__*, i8*)*** %12, align 8
  store i8* %5, i8** %13, align 8
  %21 = load %struct.proc_handle*, %struct.proc_handle** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call %struct.map_info* @_proc_name2map(%struct.proc_handle* %21, i8* %22)
  store %struct.map_info* %23, %struct.map_info** %16, align 8
  %24 = icmp eq %struct.map_info* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @DPRINTFX(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i32 -1, i32* %7, align 4
  br label %202

28:                                               ; preds = %6
  %29 = load %struct.map_info*, %struct.map_info** %16, align 8
  %30 = call i64 @open_object(%struct.map_info* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.map_info*, %struct.map_info** %16, align 8
  %34 = getelementptr inbounds %struct.map_info, %struct.map_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @DPRINTFX(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  store i32 -1, i32* %7, align 4
  br label %202

38:                                               ; preds = %28
  %39 = load %struct.map_info*, %struct.map_info** %16, align 8
  %40 = getelementptr inbounds %struct.map_info, %struct.map_info* %39, i32 0, i32 1
  %41 = load %struct.file_info*, %struct.file_info** %40, align 8
  store %struct.file_info* %41, %struct.file_info** %15, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @PR_SYMTAB, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.file_info*, %struct.file_info** %15, align 8
  %47 = getelementptr inbounds %struct.file_info, %struct.file_info* %46, i32 0, i32 3
  br label %51

48:                                               ; preds = %38
  %49 = load %struct.file_info*, %struct.file_info** %15, align 8
  %50 = getelementptr inbounds %struct.file_info, %struct.file_info* %49, i32 0, i32 2
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi %struct.symtab* [ %47, %45 ], [ %50, %48 ]
  store %struct.symtab* %52, %struct.symtab** %17, align 8
  %53 = load %struct.symtab*, %struct.symtab** %17, align 8
  %54 = getelementptr inbounds %struct.symtab, %struct.symtab* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 -1, i32* %7, align 4
  br label %202

58:                                               ; preds = %51
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %59

59:                                               ; preds = %197, %58
  %60 = load %struct.symtab*, %struct.symtab** %17, align 8
  %61 = getelementptr inbounds %struct.symtab, %struct.symtab* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %20, align 4
  %64 = call i32* @gelf_getsym(i32 %62, i32 %63, %struct.TYPE_10__* %14)
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %200

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @GELF_ST_BIND(i32 %68)
  %70 = load i64, i64* @STB_LOCAL, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @BIND_LOCAL, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %197

78:                                               ; preds = %72, %66
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @GELF_ST_BIND(i32 %80)
  %82 = load i64, i64* @STB_GLOBAL, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @BIND_GLOBAL, align 4
  %87 = and i32 %85, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %197

90:                                               ; preds = %84, %78
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @GELF_ST_BIND(i32 %92)
  %94 = load i64, i64* @STB_WEAK, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @BIND_WEAK, align 4
  %99 = and i32 %97, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %197

102:                                              ; preds = %96, %90
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @GELF_ST_TYPE(i32 %104)
  %106 = load i64, i64* @STT_NOTYPE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @TYPE_NOTYPE, align 4
  %111 = and i32 %109, %110
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %197

114:                                              ; preds = %108, %102
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @GELF_ST_TYPE(i32 %116)
  %118 = load i64, i64* @STT_OBJECT, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @TYPE_OBJECT, align 4
  %123 = and i32 %121, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %197

126:                                              ; preds = %120, %114
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @GELF_ST_TYPE(i32 %128)
  %130 = load i64, i64* @STT_FUNC, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %126
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* @TYPE_FUNC, align 4
  %135 = and i32 %133, %134
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %197

138:                                              ; preds = %132, %126
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @GELF_ST_TYPE(i32 %140)
  %142 = load i64, i64* @STT_SECTION, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %138
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @TYPE_SECTION, align 4
  %147 = and i32 %145, %146
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %197

150:                                              ; preds = %144, %138
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @GELF_ST_TYPE(i32 %152)
  %154 = load i64, i64* @STT_FILE, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @TYPE_FILE, align 4
  %159 = and i32 %157, %158
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %197

162:                                              ; preds = %156, %150
  %163 = load %struct.file_info*, %struct.file_info** %15, align 8
  %164 = getelementptr inbounds %struct.file_info, %struct.file_info* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.symtab*, %struct.symtab** %17, align 8
  %167 = getelementptr inbounds %struct.symtab, %struct.symtab* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i8* @elf_strptr(i32 %165, i32 %168, i32 %170)
  store i8* %171, i8** %18, align 8
  %172 = load %struct.file_info*, %struct.file_info** %15, align 8
  %173 = getelementptr inbounds %struct.file_info, %struct.file_info* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @ET_DYN, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %188

178:                                              ; preds = %162
  %179 = load %struct.map_info*, %struct.map_info** %16, align 8
  %180 = getelementptr inbounds %struct.map_info, %struct.map_info* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %185, %182
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %183, align 4
  br label %188

188:                                              ; preds = %178, %162
  %189 = load i32 (i8*, %struct.TYPE_10__*, i8*)**, i32 (i8*, %struct.TYPE_10__*, i8*)*** %12, align 8
  %190 = load i32 (i8*, %struct.TYPE_10__*, i8*)*, i32 (i8*, %struct.TYPE_10__*, i8*)** %189, align 8
  %191 = load i8*, i8** %13, align 8
  %192 = load i8*, i8** %18, align 8
  %193 = call i32 %190(i8* %191, %struct.TYPE_10__* %14, i8* %192)
  store i32 %193, i32* %19, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %188
  br label %200

196:                                              ; preds = %188
  br label %197

197:                                              ; preds = %196, %161, %149, %137, %125, %113, %101, %89, %77
  %198 = load i32, i32* %20, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %20, align 4
  br label %59

200:                                              ; preds = %195, %59
  %201 = load i32, i32* %19, align 4
  store i32 %201, i32* %7, align 4
  br label %202

202:                                              ; preds = %200, %57, %32, %25
  %203 = load i32, i32* %7, align 4
  ret i32 %203
}

declare dso_local %struct.map_info* @_proc_name2map(%struct.proc_handle*, i8*) #1

declare dso_local i32 @DPRINTFX(i8*, i8*) #1

declare dso_local i64 @open_object(%struct.map_info*) #1

declare dso_local i32* @gelf_getsym(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @GELF_ST_BIND(i32) #1

declare dso_local i64 @GELF_ST_TYPE(i32) #1

declare dso_local i8* @elf_strptr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
