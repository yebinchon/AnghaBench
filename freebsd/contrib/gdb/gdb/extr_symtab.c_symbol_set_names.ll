; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_symbol_set_names.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_symbol_set_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.general_symbol_info = type { i64, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.objfile = type { i32, i32* }

@language_java = common dso_local global i64 0, align 8
@JAVA_PREFIX_LEN = common dso_local global i32 0, align 4
@JAVA_PREFIX = common dso_local global i8* null, align 8
@INSERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @symbol_set_names(%struct.general_symbol_info* %0, i8* %1, i32 %2, %struct.objfile* %3) #0 {
  %5 = alloca %struct.general_symbol_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.objfile*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.general_symbol_info* %0, %struct.general_symbol_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.objfile* %3, %struct.objfile** %8, align 8
  %17 = load %struct.objfile*, %struct.objfile** %8, align 8
  %18 = getelementptr inbounds %struct.objfile, %struct.objfile* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load %struct.objfile*, %struct.objfile** %8, align 8
  %23 = call i32 @create_demangled_names_hash(%struct.objfile* %22)
  br label %24

24:                                               ; preds = %21, %4
  %25 = load %struct.general_symbol_info*, %struct.general_symbol_info** %5, align 8
  %26 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @language_java, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @JAVA_PREFIX_LEN, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i8* @alloca(i32 %35)
  store i8* %36, i8** %13, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load i8*, i8** @JAVA_PREFIX, align 8
  %39 = load i32, i32* @JAVA_PREFIX_LEN, align 4
  %40 = call i32 @memcpy(i8* %37, i8* %38, i32 %39)
  %41 = load i8*, i8** %13, align 8
  %42 = load i32, i32* @JAVA_PREFIX_LEN, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @memcpy(i8* %44, i8* %45, i32 %46)
  %48 = load i8*, i8** %13, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %13, align 8
  store i8* %52, i8** %11, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load i32, i32* @JAVA_PREFIX_LEN, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8* %56, i8** %10, align 8
  br label %85

57:                                               ; preds = %24
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %57
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  %69 = call i8* @alloca(i32 %68)
  store i8* %69, i8** %14, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @memcpy(i8* %70, i8* %71, i32 %72)
  %74 = load i8*, i8** %14, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8 0, i8* %77, align 1
  %78 = load i8*, i8** %14, align 8
  store i8* %78, i8** %11, align 8
  %79 = load i8*, i8** %14, align 8
  store i8* %79, i8** %10, align 8
  br label %84

80:                                               ; preds = %57
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %12, align 4
  %82 = load i8*, i8** %6, align 8
  store i8* %82, i8** %11, align 8
  %83 = load i8*, i8** %6, align 8
  store i8* %83, i8** %10, align 8
  br label %84

84:                                               ; preds = %80, %65
  br label %85

85:                                               ; preds = %84, %30
  %86 = load %struct.objfile*, %struct.objfile** %8, align 8
  %87 = getelementptr inbounds %struct.objfile, %struct.objfile* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = load i32, i32* @INSERT, align 4
  %91 = call i64 @htab_find_slot(i32* %88, i8* %89, i32 %90)
  %92 = inttoptr i64 %91 to i8**
  store i8** %92, i8*** %9, align 8
  %93 = load i8**, i8*** %9, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %145

96:                                               ; preds = %85
  %97 = load %struct.general_symbol_info*, %struct.general_symbol_info** %5, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = call i8* @symbol_find_demangled_name(%struct.general_symbol_info* %97, i8* %98)
  store i8* %99, i8** %15, align 8
  %100 = load i8*, i8** %15, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i8*, i8** %15, align 8
  %104 = call i32 @strlen(i8* %103)
  br label %106

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105, %102
  %107 = phi i32 [ %104, %102 ], [ 0, %105 ]
  store i32 %107, i32* %16, align 4
  %108 = load %struct.objfile*, %struct.objfile** %8, align 8
  %109 = getelementptr inbounds %struct.objfile, %struct.objfile* %108, i32 0, i32 0
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %16, align 4
  %112 = add nsw i32 %110, %111
  %113 = add nsw i32 %112, 2
  %114 = call i8* @obstack_alloc(i32* %109, i32 %113)
  %115 = load i8**, i8*** %9, align 8
  store i8* %114, i8** %115, align 8
  %116 = load i8**, i8*** %9, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, 1
  %121 = call i32 @memcpy(i8* %117, i8* %118, i32 %120)
  %122 = load i8*, i8** %15, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %137

124:                                              ; preds = %106
  %125 = load i8**, i8*** %9, align 8
  %126 = load i8*, i8** %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  %131 = load i8*, i8** %15, align 8
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %132, 1
  %134 = call i32 @memcpy(i8* %130, i8* %131, i32 %133)
  %135 = load i8*, i8** %15, align 8
  %136 = call i32 @xfree(i8* %135)
  br label %144

137:                                              ; preds = %106
  %138 = load i8**, i8*** %9, align 8
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %139, i64 %142
  store i8 0, i8* %143, align 1
  br label %144

144:                                              ; preds = %137, %124
  br label %145

145:                                              ; preds = %144, %85
  %146 = load i8**, i8*** %9, align 8
  %147 = load i8*, i8** %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = sub i64 0, %152
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  %155 = load %struct.general_symbol_info*, %struct.general_symbol_info** %5, align 8
  %156 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %155, i32 0, i32 1
  store i8* %154, i8** %156, align 8
  %157 = load i8**, i8*** %9, align 8
  %158 = load i8*, i8** %157, align 8
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %158, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %145
  %167 = load i8**, i8*** %9, align 8
  %168 = load i8*, i8** %167, align 8
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %168, i64 %171
  %173 = load %struct.general_symbol_info*, %struct.general_symbol_info** %5, align 8
  %174 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  store i8* %172, i8** %176, align 8
  br label %182

177:                                              ; preds = %145
  %178 = load %struct.general_symbol_info*, %struct.general_symbol_info** %5, align 8
  %179 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  store i8* null, i8** %181, align 8
  br label %182

182:                                              ; preds = %177, %166
  ret void
}

declare dso_local i32 @create_demangled_names_hash(%struct.objfile*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @htab_find_slot(i32*, i8*, i32) #1

declare dso_local i8* @symbol_find_demangled_name(%struct.general_symbol_info*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @obstack_alloc(i32*, i32) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
