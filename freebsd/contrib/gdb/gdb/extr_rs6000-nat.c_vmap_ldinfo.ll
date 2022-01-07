; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_vmap_ldinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_vmap_ldinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmap = type { %struct.objfile*, i32, i32, %struct.vmap* }
%struct.objfile = type { i8*, i32* }
%struct.stat = type { i64, i64 }

@.str = private unnamed_addr constant [48 x i8] c"%s (fd=%d) has disappeared, keeping its symbols\00", align 1
@vmap = common dso_local global %struct.vmap* null, align 8
@symfile_objfile = common dso_local global %struct.objfile* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Unable to stat %s, keeping its symbols\00", align 1
@.str.2 = private unnamed_addr constant [280 x i8] c"Symbol file %s\0Ais not mapped; discarding it.\0AIf in fact that file has symbols which the mapped files listed by\0A\22info files\22 lack, you can load symbols with the \22symbol-file\22 or\0A\22add-symbol-file\22 commands (note that you must take care of relocating\0Asymbols to the proper address).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @vmap_ldinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmap_ldinfo(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.vmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.objfile*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %8, align 4
  %15 = call i32 (...) @ARCH64()
  store i32 %15, i32* %10, align 4
  br label %16

16:                                               ; preds = %172, %1
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i8* @LDI_FILENAME(i32* %17, i32 %18)
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8* %25, i8** %12, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @LDI_FD(i32* %26, i32 %27)
  store i32 %28, i32* %13, align 4
  store i32 0, i32* %7, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call i64 @fstat(i32 %29, %struct.stat* %3)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %16
  %33 = load i8*, i8** %11, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i32 (i8*, i8*, ...) @warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %34)
  br label %159

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %153, %36
  store i32 0, i32* %6, align 4
  %38 = load %struct.vmap*, %struct.vmap** @vmap, align 8
  store %struct.vmap* %38, %struct.vmap** %5, align 8
  br label %39

39:                                               ; preds = %143, %37
  %40 = load %struct.vmap*, %struct.vmap** %5, align 8
  %41 = icmp ne %struct.vmap* %40, null
  br i1 %41, label %42, label %147

42:                                               ; preds = %39
  %43 = load i8*, i8** %11, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 47
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i8*, i8** %11, align 8
  %50 = load %struct.vmap*, %struct.vmap** %5, align 8
  %51 = getelementptr inbounds %struct.vmap, %struct.vmap* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @DEPRECATED_STREQ(i8* %49, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %48, %42
  %56 = load i8*, i8** %12, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load i8*, i8** %12, align 8
  %63 = load %struct.vmap*, %struct.vmap** %5, align 8
  %64 = getelementptr inbounds %struct.vmap, %struct.vmap* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @DEPRECATED_STREQ(i8* %62, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %61, %48
  br label %143

69:                                               ; preds = %61, %55
  %70 = load %struct.vmap*, %struct.vmap** %5, align 8
  %71 = getelementptr inbounds %struct.vmap, %struct.vmap* %70, i32 0, i32 0
  %72 = load %struct.objfile*, %struct.objfile** %71, align 8
  %73 = icmp eq %struct.objfile* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load %struct.objfile*, %struct.objfile** @symfile_objfile, align 8
  br label %80

76:                                               ; preds = %69
  %77 = load %struct.vmap*, %struct.vmap** %5, align 8
  %78 = getelementptr inbounds %struct.vmap, %struct.vmap* %77, i32 0, i32 0
  %79 = load %struct.objfile*, %struct.objfile** %78, align 8
  br label %80

80:                                               ; preds = %76, %74
  %81 = phi %struct.objfile* [ %75, %74 ], [ %79, %76 ]
  store %struct.objfile* %81, %struct.objfile** %14, align 8
  %82 = load %struct.objfile*, %struct.objfile** %14, align 8
  %83 = icmp eq %struct.objfile* %82, null
  br i1 %83, label %95, label %84

84:                                               ; preds = %80
  %85 = load %struct.objfile*, %struct.objfile** %14, align 8
  %86 = getelementptr inbounds %struct.objfile, %struct.objfile* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %84
  %90 = load %struct.objfile*, %struct.objfile** %14, align 8
  %91 = getelementptr inbounds %struct.objfile, %struct.objfile* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = call i64 @bfd_stat(i32* %92, %struct.stat* %4)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89, %84, %80
  %96 = load i8*, i8** %11, align 8
  %97 = call i32 (i8*, i8*, ...) @warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %96)
  br label %143

98:                                               ; preds = %89
  %99 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %100, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %106, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %104, %98
  br label %143

111:                                              ; preds = %104
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @close(i32 %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  %120 = load %struct.vmap*, %struct.vmap** %5, align 8
  %121 = load i32*, i32** %2, align 8
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @vmap_secs(%struct.vmap* %120, i32* %121, i32 %122)
  %124 = load %struct.vmap*, %struct.vmap** %5, align 8
  %125 = getelementptr inbounds %struct.vmap, %struct.vmap* %124, i32 0, i32 0
  %126 = load %struct.objfile*, %struct.objfile** %125, align 8
  %127 = icmp eq %struct.objfile* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %117
  store i32 1, i32* %8, align 4
  br label %129

129:                                              ; preds = %128, %117
  %130 = load %struct.vmap*, %struct.vmap** %5, align 8
  %131 = call i32 @vmap_symtab(%struct.vmap* %130)
  br i1 true, label %132, label %142

132:                                              ; preds = %129
  %133 = load %struct.vmap*, %struct.vmap** %5, align 8
  %134 = getelementptr inbounds %struct.vmap, %struct.vmap* %133, i32 0, i32 0
  %135 = load %struct.objfile*, %struct.objfile** %134, align 8
  %136 = icmp ne %struct.objfile* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load %struct.vmap*, %struct.vmap** %5, align 8
  %139 = getelementptr inbounds %struct.vmap, %struct.vmap* %138, i32 0, i32 0
  %140 = load %struct.objfile*, %struct.objfile** %139, align 8
  %141 = call i32 @target_new_objfile_hook(%struct.objfile* %140)
  br label %142

142:                                              ; preds = %137, %132, %129
  br label %143

143:                                              ; preds = %142, %110, %95, %68
  %144 = load %struct.vmap*, %struct.vmap** %5, align 8
  %145 = getelementptr inbounds %struct.vmap, %struct.vmap* %144, i32 0, i32 3
  %146 = load %struct.vmap*, %struct.vmap** %145, align 8
  store %struct.vmap* %146, %struct.vmap** %5, align 8
  br label %39

147:                                              ; preds = %39
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %150
  %154 = load i32*, i32** %2, align 8
  %155 = call i32 @add_vmap(i32* %154)
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %7, align 4
  br label %37

158:                                              ; preds = %150, %147
  br label %159

159:                                              ; preds = %158, %32
  %160 = load i32*, i32** %2, align 8
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @LDI_NEXT(i32* %160, i32 %161)
  store i32 %162, i32* %9, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %159
  %165 = load i32, i32* %9, align 4
  %166 = load i32*, i32** %2, align 8
  %167 = bitcast i32* %166 to i8*
  %168 = sext i32 %165 to i64
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  %170 = bitcast i8* %169 to i32*
  store i32* %170, i32** %2, align 8
  %171 = icmp ne i32* %170, null
  br label %172

172:                                              ; preds = %164, %159
  %173 = phi i1 [ false, %159 ], [ %171, %164 ]
  br i1 %173, label %16, label %174

174:                                              ; preds = %172
  %175 = load %struct.objfile*, %struct.objfile** @symfile_objfile, align 8
  %176 = icmp ne %struct.objfile* %175, null
  br i1 %176, label %177, label %187

177:                                              ; preds = %174
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %177
  %181 = load %struct.objfile*, %struct.objfile** @symfile_objfile, align 8
  %182 = getelementptr inbounds %struct.objfile, %struct.objfile* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 (i8*, i8*, ...) @warning(i8* getelementptr inbounds ([280 x i8], [280 x i8]* @.str.2, i64 0, i64 0), i8* %183)
  %185 = load %struct.objfile*, %struct.objfile** @symfile_objfile, align 8
  %186 = call i32 @free_objfile(%struct.objfile* %185)
  store %struct.objfile* null, %struct.objfile** @symfile_objfile, align 8
  br label %187

187:                                              ; preds = %180, %177, %174
  %188 = call i32 (...) @breakpoint_re_set()
  ret void
}

declare dso_local i32 @ARCH64(...) #1

declare dso_local i8* @LDI_FILENAME(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @LDI_FD(i32*, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @warning(i8*, i8*, ...) #1

declare dso_local i32 @DEPRECATED_STREQ(i8*, i32) #1

declare dso_local i64 @bfd_stat(i32*, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @vmap_secs(%struct.vmap*, i32*, i32) #1

declare dso_local i32 @vmap_symtab(%struct.vmap*) #1

declare dso_local i32 @target_new_objfile_hook(%struct.objfile*) #1

declare dso_local i32 @add_vmap(i32*) #1

declare dso_local i32 @LDI_NEXT(i32*, i32) #1

declare dso_local i32 @free_objfile(%struct.objfile*) #1

declare dso_local i32 @breakpoint_re_set(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
