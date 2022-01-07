; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_add_vmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_add_vmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmap = type { %struct.objfile*, i32 }
%struct.objfile = type { i32 }
%struct.TYPE_11__ = type { i32 }

@arch64 = common dso_local global i32 0, align 4
@gnutarget = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Could not open `%s' as an executable file: %s\00", align 1
@bfd_object = common dso_local global i32 0, align 4
@bfd_archive = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"\22%s\22: member \22%s\22 missing.\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"\22%s\22: member \22%s\22 not in executable format: %s.\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"\22%s\22: not in executable format: %s.\00", align 1
@vmap = common dso_local global %struct.vmap* null, align 8
@auto_solib_add = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vmap* (i32*)* @add_vmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vmap* @add_vmap(i32* %0) #0 {
  %2 = alloca %struct.vmap*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.objfile*, align 8
  %10 = alloca %struct.vmap*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %12 = load i32, i32* @arch64, align 4
  %13 = call i32 @ARCH64_DECL(i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @arch64, align 4
  %16 = call i8* @LDI_FILENAME(i32* %14, i32 %15)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = call i8* @savestring(i8* %23, i32 %25)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = call i8* @savestring(i8* %27, i32 %29)
  store i8* %30, i8** %7, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @arch64, align 4
  %33 = call i32 @LDI_FD(i32* %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* @gnutarget, align 4
  %39 = call %struct.TYPE_11__* @bfd_openr(i8* %37, i32 %38)
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %4, align 8
  br label %45

40:                                               ; preds = %1
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* @gnutarget, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call %struct.TYPE_11__* @bfd_fdopenr(i8* %41, i32 %42, i32 %43)
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %4, align 8
  br label %45

45:                                               ; preds = %40, %36
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = icmp ne %struct.TYPE_11__* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 (...) @bfd_get_error()
  %51 = call i8* @bfd_errmsg(i32 %50)
  %52 = call i32 (i8*, i8*, i8*, ...) @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %49, i8* %51)
  store %struct.vmap* null, %struct.vmap** %2, align 8
  br label %136

53:                                               ; preds = %45
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = load i32, i32* @bfd_object, align 4
  %56 = call i64 @bfd_check_format(%struct.TYPE_11__* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = call %struct.vmap* @map_vmap(%struct.TYPE_11__* %59, %struct.TYPE_11__* null)
  store %struct.vmap* %60, %struct.vmap** %10, align 8
  br label %117

61:                                               ; preds = %53
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = load i32, i32* @bfd_archive, align 4
  %64 = call i64 @bfd_check_format(%struct.TYPE_11__* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %109

66:                                               ; preds = %61
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %67

67:                                               ; preds = %80, %66
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %70 = call %struct.TYPE_11__* @bfd_openr_next_archived_file(%struct.TYPE_11__* %68, %struct.TYPE_11__* %69)
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %5, align 8
  %71 = icmp ne %struct.TYPE_11__* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load i8*, i8** %6, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @DEPRECATED_STREQ(i8* %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %81

80:                                               ; preds = %72
  br label %67

81:                                               ; preds = %79, %67
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = icmp ne %struct.TYPE_11__* %82, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 (i8*, i8*, i8*, ...) @warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %85, i8* %86)
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %89 = call i32 @bfd_close(%struct.TYPE_11__* %88)
  store %struct.vmap* null, %struct.vmap** %2, align 8
  br label %136

90:                                               ; preds = %81
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %92 = load i32, i32* @bfd_object, align 4
  %93 = call i64 @bfd_check_format(%struct.TYPE_11__* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %90
  %96 = load i8*, i8** %7, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 (...) @bfd_get_error()
  %99 = call i8* @bfd_errmsg(i32 %98)
  %100 = call i32 (i8*, i8*, i8*, ...) @warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %96, i8* %97, i8* %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %102 = call i32 @bfd_close(%struct.TYPE_11__* %101)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %104 = call i32 @bfd_close(%struct.TYPE_11__* %103)
  store %struct.vmap* null, %struct.vmap** %2, align 8
  br label %136

105:                                              ; preds = %90
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %108 = call %struct.vmap* @map_vmap(%struct.TYPE_11__* %106, %struct.TYPE_11__* %107)
  store %struct.vmap* %108, %struct.vmap** %10, align 8
  br label %116

109:                                              ; preds = %61
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 (...) @bfd_get_error()
  %112 = call i8* @bfd_errmsg(i32 %111)
  %113 = call i32 (i8*, i8*, i8*, ...) @warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %110, i8* %112)
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %115 = call i32 @bfd_close(%struct.TYPE_11__* %114)
  store %struct.vmap* null, %struct.vmap** %2, align 8
  br label %136

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %116, %58
  %118 = load %struct.vmap*, %struct.vmap** %10, align 8
  %119 = getelementptr inbounds %struct.vmap, %struct.vmap* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call %struct.objfile* @allocate_objfile(i32 %120, i32 0)
  store %struct.objfile* %121, %struct.objfile** %9, align 8
  %122 = load %struct.objfile*, %struct.objfile** %9, align 8
  %123 = load %struct.vmap*, %struct.vmap** %10, align 8
  %124 = getelementptr inbounds %struct.vmap, %struct.vmap* %123, i32 0, i32 0
  store %struct.objfile* %122, %struct.objfile** %124, align 8
  %125 = load %struct.vmap*, %struct.vmap** %10, align 8
  %126 = load %struct.vmap*, %struct.vmap** @vmap, align 8
  %127 = icmp eq %struct.vmap* %125, %126
  br i1 %127, label %131, label %128

128:                                              ; preds = %117
  %129 = load i64, i64* @auto_solib_add, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128, %117
  %132 = load %struct.vmap*, %struct.vmap** %10, align 8
  %133 = call i32 @vmap_add_symbols(%struct.vmap* %132)
  br label %134

134:                                              ; preds = %131, %128
  %135 = load %struct.vmap*, %struct.vmap** %10, align 8
  store %struct.vmap* %135, %struct.vmap** %2, align 8
  br label %136

136:                                              ; preds = %134, %109, %95, %84, %48
  %137 = load %struct.vmap*, %struct.vmap** %2, align 8
  ret %struct.vmap* %137
}

declare dso_local i32 @ARCH64_DECL(i32) #1

declare dso_local i8* @LDI_FILENAME(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local i32 @LDI_FD(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @bfd_openr(i8*, i32) #1

declare dso_local %struct.TYPE_11__* @bfd_fdopenr(i8*, i32, i32) #1

declare dso_local i32 @warning(i8*, i8*, i8*, ...) #1

declare dso_local i8* @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i64 @bfd_check_format(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.vmap* @map_vmap(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @bfd_openr_next_archived_file(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i64 @DEPRECATED_STREQ(i8*, i32) #1

declare dso_local i32 @bfd_close(%struct.TYPE_11__*) #1

declare dso_local %struct.objfile* @allocate_objfile(i32, i32) #1

declare dso_local i32 @vmap_add_symbols(%struct.vmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
