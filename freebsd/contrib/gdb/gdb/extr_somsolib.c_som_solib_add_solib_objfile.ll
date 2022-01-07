; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_somsolib.c_som_solib_add_solib_objfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_somsolib.c_som_solib_add_solib_objfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.so_list = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32, i32, %struct.obj_section*, %struct.obj_section*, i32 }
%struct.TYPE_5__ = type { %struct.so_list*, i32* }
%struct.obj_section = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i64 }

@OBJF_SHARED = common dso_local global i32 0, align 4
@SEC_CODE = common dso_local global i32 0, align 4
@SEC_DATA = common dso_local global i32 0, align 4
@bfd_object = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"\22%s\22: not in executable format: %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.so_list*, i8*, i32, i32)* @som_solib_add_solib_objfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @som_solib_add_solib_objfile(%struct.so_list* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.so_list*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.obj_section*, align 8
  %11 = alloca i32, align 4
  store %struct.so_list* %0, %struct.so_list** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @OBJF_SHARED, align 4
  %15 = call %struct.TYPE_6__* @symbol_file_add(i8* %12, i32 %13, i32* null, i32 0, i32 %14)
  %16 = load %struct.so_list*, %struct.so_list** %5, align 8
  %17 = getelementptr inbounds %struct.so_list, %struct.so_list* %16, i32 0, i32 1
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %17, align 8
  %18 = load %struct.so_list*, %struct.so_list** %5, align 8
  %19 = getelementptr inbounds %struct.so_list, %struct.so_list* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.so_list*, %struct.so_list** %5, align 8
  %24 = getelementptr inbounds %struct.so_list, %struct.so_list* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.so_list*, %struct.so_list** %5, align 8
  %26 = getelementptr inbounds %struct.so_list, %struct.so_list* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 4
  %29 = load %struct.obj_section*, %struct.obj_section** %28, align 8
  store %struct.obj_section* %29, %struct.obj_section** %10, align 8
  br label %30

30:                                               ; preds = %110, %4
  %31 = load %struct.obj_section*, %struct.obj_section** %10, align 8
  %32 = load %struct.so_list*, %struct.so_list** %5, align 8
  %33 = getelementptr inbounds %struct.so_list, %struct.so_list* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load %struct.obj_section*, %struct.obj_section** %35, align 8
  %37 = icmp ult %struct.obj_section* %31, %36
  br i1 %37, label %38, label %113

38:                                               ; preds = %30
  %39 = load %struct.so_list*, %struct.so_list** %5, align 8
  %40 = getelementptr inbounds %struct.so_list, %struct.so_list* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.obj_section*, %struct.obj_section** %10, align 8
  %43 = getelementptr inbounds %struct.obj_section, %struct.obj_section* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bfd_get_section_flags(i32 %41, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @SEC_CODE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %81

50:                                               ; preds = %38
  %51 = load %struct.so_list*, %struct.so_list** %5, align 8
  %52 = getelementptr inbounds %struct.so_list, %struct.so_list* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.so_list*, %struct.so_list** %5, align 8
  %56 = getelementptr inbounds %struct.so_list, %struct.so_list* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %54, %58
  %60 = load %struct.obj_section*, %struct.obj_section** %10, align 8
  %61 = getelementptr inbounds %struct.obj_section, %struct.obj_section* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %59
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  %66 = load %struct.so_list*, %struct.so_list** %5, align 8
  %67 = getelementptr inbounds %struct.so_list, %struct.so_list* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.so_list*, %struct.so_list** %5, align 8
  %71 = getelementptr inbounds %struct.so_list, %struct.so_list* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %69, %73
  %75 = load %struct.obj_section*, %struct.obj_section** %10, align 8
  %76 = getelementptr inbounds %struct.obj_section, %struct.obj_section* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %74
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 4
  br label %109

81:                                               ; preds = %38
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @SEC_DATA, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %81
  %87 = load %struct.so_list*, %struct.so_list** %5, align 8
  %88 = getelementptr inbounds %struct.so_list, %struct.so_list* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.obj_section*, %struct.obj_section** %10, align 8
  %92 = getelementptr inbounds %struct.obj_section, %struct.obj_section* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %90
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 4
  %97 = load %struct.so_list*, %struct.so_list** %5, align 8
  %98 = getelementptr inbounds %struct.so_list, %struct.so_list* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.obj_section*, %struct.obj_section** %10, align 8
  %102 = getelementptr inbounds %struct.obj_section, %struct.obj_section* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %100
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 4
  br label %108

107:                                              ; preds = %81
  br label %108

108:                                              ; preds = %107, %86
  br label %109

109:                                              ; preds = %108, %50
  br label %110

110:                                              ; preds = %109
  %111 = load %struct.obj_section*, %struct.obj_section** %10, align 8
  %112 = getelementptr inbounds %struct.obj_section, %struct.obj_section* %111, i32 1
  store %struct.obj_section* %112, %struct.obj_section** %10, align 8
  br label %30

113:                                              ; preds = %30
  %114 = load i32, i32* @OBJF_SHARED, align 4
  %115 = load %struct.so_list*, %struct.so_list** %5, align 8
  %116 = getelementptr inbounds %struct.so_list, %struct.so_list* %115, i32 0, i32 1
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %114
  store i32 %120, i32* %118, align 4
  %121 = load %struct.so_list*, %struct.so_list** %5, align 8
  %122 = getelementptr inbounds %struct.so_list, %struct.so_list* %121, i32 0, i32 1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = icmp eq %struct.TYPE_5__* %125, null
  br i1 %126, label %127, label %143

127:                                              ; preds = %113
  %128 = load %struct.so_list*, %struct.so_list** %5, align 8
  %129 = getelementptr inbounds %struct.so_list, %struct.so_list* %128, i32 0, i32 1
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = call i64 @obstack_alloc(i32* %131, i32 16)
  %133 = inttoptr i64 %132 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %133, %struct.TYPE_5__** %9, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  store i32* null, i32** %135, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  store %struct.so_list* null, %struct.so_list** %137, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %139 = load %struct.so_list*, %struct.so_list** %5, align 8
  %140 = getelementptr inbounds %struct.so_list, %struct.so_list* %139, i32 0, i32 1
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  store %struct.TYPE_5__* %138, %struct.TYPE_5__** %142, align 8
  br label %143

143:                                              ; preds = %127, %113
  %144 = load %struct.so_list*, %struct.so_list** %5, align 8
  %145 = getelementptr inbounds %struct.so_list, %struct.so_list* %144, i32 0, i32 1
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  store %struct.TYPE_5__* %148, %struct.TYPE_5__** %9, align 8
  %149 = load %struct.so_list*, %struct.so_list** %5, align 8
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  store %struct.so_list* %149, %struct.so_list** %151, align 8
  %152 = load %struct.so_list*, %struct.so_list** %5, align 8
  %153 = getelementptr inbounds %struct.so_list, %struct.so_list* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @bfd_object, align 4
  %156 = call i32 @bfd_check_format(i32 %154, i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %143
  %159 = load i8*, i8** %6, align 8
  %160 = call i32 (...) @bfd_get_error()
  %161 = call i8* @bfd_errmsg(i32 %160)
  %162 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %159, i8* %161)
  br label %163

163:                                              ; preds = %158, %143
  ret void
}

declare dso_local %struct.TYPE_6__* @symbol_file_add(i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @bfd_get_section_flags(i32, i32) #1

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @bfd_check_format(i32, i32) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i8* @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
