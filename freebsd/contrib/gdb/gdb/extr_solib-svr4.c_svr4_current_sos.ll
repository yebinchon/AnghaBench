; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-svr4.c_svr4_current_sos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-svr4.c_svr4_current_sos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.so_list = type { i8*, %struct.so_list*, i32, %struct.so_list*, %struct.so_list* }
%struct.link_map_offsets = type { i32 }
%struct.cleanup = type { i32 }

@debug_base = common dso_local global i64 0, align 8
@SO_NAME_MAX_PATH_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"current_sos: Can't read pathname for load map: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.so_list* ()* @svr4_current_sos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.so_list* @svr4_current_sos() #0 {
  %1 = alloca %struct.so_list*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.so_list*, align 8
  %4 = alloca %struct.so_list**, align 8
  %5 = alloca %struct.link_map_offsets*, align 8
  %6 = alloca %struct.so_list*, align 8
  %7 = alloca %struct.cleanup*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.so_list* null, %struct.so_list** %3, align 8
  store %struct.so_list** %3, %struct.so_list*** %4, align 8
  %10 = load i64, i64* @debug_base, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %0
  %13 = call i64 (...) @locate_base()
  store i64 %13, i64* @debug_base, align 8
  %14 = load i64, i64* @debug_base, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store %struct.so_list* null, %struct.so_list** %1, align 8
  br label %146

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %0
  %19 = call i64 (...) @first_link_map_member()
  store i64 %19, i64* %2, align 8
  br label %20

20:                                               ; preds = %141, %18
  %21 = load i64, i64* %2, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %144

23:                                               ; preds = %20
  %24 = call %struct.link_map_offsets* (...) @SVR4_FETCH_LINK_MAP_OFFSETS()
  store %struct.link_map_offsets* %24, %struct.link_map_offsets** %5, align 8
  %25 = call i8* @xmalloc(i32 40)
  %26 = bitcast i8* %25 to %struct.so_list*
  store %struct.so_list* %26, %struct.so_list** %6, align 8
  %27 = load %struct.so_list*, %struct.so_list** %6, align 8
  %28 = call %struct.cleanup* @make_cleanup(i32 (i8*)* @xfree, %struct.so_list* %27)
  store %struct.cleanup* %28, %struct.cleanup** %7, align 8
  %29 = load %struct.so_list*, %struct.so_list** %6, align 8
  %30 = call i32 @memset(%struct.so_list* %29, i32 0, i32 40)
  %31 = call i8* @xmalloc(i32 4)
  %32 = bitcast i8* %31 to %struct.so_list*
  %33 = load %struct.so_list*, %struct.so_list** %6, align 8
  %34 = getelementptr inbounds %struct.so_list, %struct.so_list* %33, i32 0, i32 4
  store %struct.so_list* %32, %struct.so_list** %34, align 8
  %35 = load %struct.so_list*, %struct.so_list** %6, align 8
  %36 = getelementptr inbounds %struct.so_list, %struct.so_list* %35, i32 0, i32 4
  %37 = load %struct.so_list*, %struct.so_list** %36, align 8
  %38 = call %struct.cleanup* @make_cleanup(i32 (i8*)* @xfree, %struct.so_list* %37)
  %39 = load %struct.link_map_offsets*, %struct.link_map_offsets** %5, align 8
  %40 = getelementptr inbounds %struct.link_map_offsets, %struct.link_map_offsets* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @xmalloc(i32 %41)
  %43 = bitcast i8* %42 to %struct.so_list*
  %44 = load %struct.so_list*, %struct.so_list** %6, align 8
  %45 = getelementptr inbounds %struct.so_list, %struct.so_list* %44, i32 0, i32 4
  %46 = load %struct.so_list*, %struct.so_list** %45, align 8
  %47 = getelementptr inbounds %struct.so_list, %struct.so_list* %46, i32 0, i32 3
  store %struct.so_list* %43, %struct.so_list** %47, align 8
  %48 = load %struct.so_list*, %struct.so_list** %6, align 8
  %49 = getelementptr inbounds %struct.so_list, %struct.so_list* %48, i32 0, i32 4
  %50 = load %struct.so_list*, %struct.so_list** %49, align 8
  %51 = getelementptr inbounds %struct.so_list, %struct.so_list* %50, i32 0, i32 3
  %52 = load %struct.so_list*, %struct.so_list** %51, align 8
  %53 = call %struct.cleanup* @make_cleanup(i32 (i8*)* @xfree, %struct.so_list* %52)
  %54 = load %struct.so_list*, %struct.so_list** %6, align 8
  %55 = getelementptr inbounds %struct.so_list, %struct.so_list* %54, i32 0, i32 4
  %56 = load %struct.so_list*, %struct.so_list** %55, align 8
  %57 = getelementptr inbounds %struct.so_list, %struct.so_list* %56, i32 0, i32 3
  %58 = load %struct.so_list*, %struct.so_list** %57, align 8
  %59 = load %struct.link_map_offsets*, %struct.link_map_offsets** %5, align 8
  %60 = getelementptr inbounds %struct.link_map_offsets, %struct.link_map_offsets* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @memset(%struct.so_list* %58, i32 0, i32 %61)
  %63 = load i64, i64* %2, align 8
  %64 = load %struct.so_list*, %struct.so_list** %6, align 8
  %65 = getelementptr inbounds %struct.so_list, %struct.so_list* %64, i32 0, i32 4
  %66 = load %struct.so_list*, %struct.so_list** %65, align 8
  %67 = getelementptr inbounds %struct.so_list, %struct.so_list* %66, i32 0, i32 3
  %68 = load %struct.so_list*, %struct.so_list** %67, align 8
  %69 = load %struct.link_map_offsets*, %struct.link_map_offsets** %5, align 8
  %70 = getelementptr inbounds %struct.link_map_offsets, %struct.link_map_offsets* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @read_memory(i64 %63, %struct.so_list* %68, i32 %71)
  %73 = load %struct.so_list*, %struct.so_list** %6, align 8
  %74 = call i64 @LM_NEXT(%struct.so_list* %73)
  store i64 %74, i64* %2, align 8
  %75 = load %struct.so_list*, %struct.so_list** %6, align 8
  %76 = call i64 @IGNORE_FIRST_LINK_MAP_ENTRY(%struct.so_list* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %23
  %79 = load %struct.so_list*, %struct.so_list** %6, align 8
  %80 = call i32 @free_so(%struct.so_list* %79)
  br label %141

81:                                               ; preds = %23
  %82 = load %struct.so_list*, %struct.so_list** %6, align 8
  %83 = call i32 @LM_NAME(%struct.so_list* %82)
  %84 = load i32, i32* @SO_NAME_MAX_PATH_SIZE, align 4
  %85 = sub nsw i32 %84, 1
  %86 = call i32 @target_read_string(i32 %83, i8** %9, i32 %85, i32* %8)
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @safe_strerror(i32 %90)
  %92 = call i32 @warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %91)
  br label %117

93:                                               ; preds = %81
  %94 = load %struct.so_list*, %struct.so_list** %6, align 8
  %95 = getelementptr inbounds %struct.so_list, %struct.so_list* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = load i32, i32* @SO_NAME_MAX_PATH_SIZE, align 4
  %99 = sub nsw i32 %98, 1
  %100 = call i32 @strncpy(i8* %96, i8* %97, i32 %99)
  %101 = load %struct.so_list*, %struct.so_list** %6, align 8
  %102 = getelementptr inbounds %struct.so_list, %struct.so_list* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* @SO_NAME_MAX_PATH_SIZE, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  store i8 0, i8* %107, align 1
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 @xfree(i8* %108)
  %110 = load %struct.so_list*, %struct.so_list** %6, align 8
  %111 = getelementptr inbounds %struct.so_list, %struct.so_list* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.so_list*, %struct.so_list** %6, align 8
  %114 = getelementptr inbounds %struct.so_list, %struct.so_list* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @strcpy(i32 %112, i8* %115)
  br label %117

117:                                              ; preds = %93, %89
  %118 = load %struct.so_list*, %struct.so_list** %6, align 8
  %119 = getelementptr inbounds %struct.so_list, %struct.so_list* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = icmp ne i8 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load %struct.so_list*, %struct.so_list** %6, align 8
  %126 = getelementptr inbounds %struct.so_list, %struct.so_list* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i64 @match_main(i8* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %124, %117
  %131 = load %struct.so_list*, %struct.so_list** %6, align 8
  %132 = call i32 @free_so(%struct.so_list* %131)
  br label %140

133:                                              ; preds = %124
  %134 = load %struct.so_list*, %struct.so_list** %6, align 8
  %135 = getelementptr inbounds %struct.so_list, %struct.so_list* %134, i32 0, i32 1
  store %struct.so_list* null, %struct.so_list** %135, align 8
  %136 = load %struct.so_list*, %struct.so_list** %6, align 8
  %137 = load %struct.so_list**, %struct.so_list*** %4, align 8
  store %struct.so_list* %136, %struct.so_list** %137, align 8
  %138 = load %struct.so_list*, %struct.so_list** %6, align 8
  %139 = getelementptr inbounds %struct.so_list, %struct.so_list* %138, i32 0, i32 1
  store %struct.so_list** %139, %struct.so_list*** %4, align 8
  br label %140

140:                                              ; preds = %133, %130
  br label %141

141:                                              ; preds = %140, %78
  %142 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %143 = call i32 @discard_cleanups(%struct.cleanup* %142)
  br label %20

144:                                              ; preds = %20
  %145 = load %struct.so_list*, %struct.so_list** %3, align 8
  store %struct.so_list* %145, %struct.so_list** %1, align 8
  br label %146

146:                                              ; preds = %144, %16
  %147 = load %struct.so_list*, %struct.so_list** %1, align 8
  ret %struct.so_list* %147
}

declare dso_local i64 @locate_base(...) #1

declare dso_local i64 @first_link_map_member(...) #1

declare dso_local %struct.link_map_offsets* @SVR4_FETCH_LINK_MAP_OFFSETS(...) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32 (i8*)*, %struct.so_list*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @memset(%struct.so_list*, i32, i32) #1

declare dso_local i32 @read_memory(i64, %struct.so_list*, i32) #1

declare dso_local i64 @LM_NEXT(%struct.so_list*) #1

declare dso_local i64 @IGNORE_FIRST_LINK_MAP_ENTRY(%struct.so_list*) #1

declare dso_local i32 @free_so(%struct.so_list*) #1

declare dso_local i32 @target_read_string(i32, i8**, i32, i32*) #1

declare dso_local i32 @LM_NAME(%struct.so_list*) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @safe_strerror(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @match_main(i8*) #1

declare dso_local i32 @discard_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
