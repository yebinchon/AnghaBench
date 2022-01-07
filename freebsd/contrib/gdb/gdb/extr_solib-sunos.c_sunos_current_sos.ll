; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-sunos.c_sunos_current_sos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-sunos.c_sunos_current_sos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.so_list = type { i8*, %struct.so_list*, i32, %struct.so_list*, %struct.so_list* }
%struct.cleanup = type { i32 }

@debug_base = common dso_local global i64 0, align 8
@SO_NAME_MAX_PATH_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"current_sos: Can't read pathname for load map: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.so_list* ()* @sunos_current_sos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.so_list* @sunos_current_sos() #0 {
  %1 = alloca %struct.so_list*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.so_list*, align 8
  %4 = alloca %struct.so_list**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.so_list*, align 8
  %8 = alloca %struct.cleanup*, align 8
  store %struct.so_list* null, %struct.so_list** %3, align 8
  store %struct.so_list** %3, %struct.so_list*** %4, align 8
  %9 = load i64, i64* @debug_base, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %0
  %12 = call i64 (...) @locate_base()
  store i64 %12, i64* @debug_base, align 8
  %13 = load i64, i64* @debug_base, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store %struct.so_list* null, %struct.so_list** %1, align 8
  br label %127

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16, %0
  %18 = call i64 (...) @first_link_map_member()
  store i64 %18, i64* %2, align 8
  br label %19

19:                                               ; preds = %122, %17
  %20 = load i64, i64* %2, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %125

22:                                               ; preds = %19
  %23 = call i8* @xmalloc(i32 40)
  %24 = bitcast i8* %23 to %struct.so_list*
  store %struct.so_list* %24, %struct.so_list** %7, align 8
  %25 = load %struct.so_list*, %struct.so_list** %7, align 8
  %26 = call %struct.cleanup* @make_cleanup(i32 (i8*)* @xfree, %struct.so_list* %25)
  store %struct.cleanup* %26, %struct.cleanup** %8, align 8
  %27 = load %struct.so_list*, %struct.so_list** %7, align 8
  %28 = call i32 @memset(%struct.so_list* %27, i32 0, i32 40)
  %29 = call i8* @xmalloc(i32 4)
  %30 = bitcast i8* %29 to %struct.so_list*
  %31 = load %struct.so_list*, %struct.so_list** %7, align 8
  %32 = getelementptr inbounds %struct.so_list, %struct.so_list* %31, i32 0, i32 4
  store %struct.so_list* %30, %struct.so_list** %32, align 8
  %33 = load %struct.so_list*, %struct.so_list** %7, align 8
  %34 = getelementptr inbounds %struct.so_list, %struct.so_list* %33, i32 0, i32 4
  %35 = load %struct.so_list*, %struct.so_list** %34, align 8
  %36 = call %struct.cleanup* @make_cleanup(i32 (i8*)* @xfree, %struct.so_list* %35)
  %37 = call i8* @xmalloc(i32 4)
  %38 = bitcast i8* %37 to %struct.so_list*
  %39 = load %struct.so_list*, %struct.so_list** %7, align 8
  %40 = getelementptr inbounds %struct.so_list, %struct.so_list* %39, i32 0, i32 4
  %41 = load %struct.so_list*, %struct.so_list** %40, align 8
  %42 = getelementptr inbounds %struct.so_list, %struct.so_list* %41, i32 0, i32 3
  store %struct.so_list* %38, %struct.so_list** %42, align 8
  %43 = load %struct.so_list*, %struct.so_list** %7, align 8
  %44 = getelementptr inbounds %struct.so_list, %struct.so_list* %43, i32 0, i32 4
  %45 = load %struct.so_list*, %struct.so_list** %44, align 8
  %46 = getelementptr inbounds %struct.so_list, %struct.so_list* %45, i32 0, i32 3
  %47 = load %struct.so_list*, %struct.so_list** %46, align 8
  %48 = call %struct.cleanup* @make_cleanup(i32 (i8*)* @xfree, %struct.so_list* %47)
  %49 = load %struct.so_list*, %struct.so_list** %7, align 8
  %50 = getelementptr inbounds %struct.so_list, %struct.so_list* %49, i32 0, i32 4
  %51 = load %struct.so_list*, %struct.so_list** %50, align 8
  %52 = getelementptr inbounds %struct.so_list, %struct.so_list* %51, i32 0, i32 3
  %53 = load %struct.so_list*, %struct.so_list** %52, align 8
  %54 = call i32 @memset(%struct.so_list* %53, i32 0, i32 4)
  %55 = load i64, i64* %2, align 8
  %56 = load %struct.so_list*, %struct.so_list** %7, align 8
  %57 = getelementptr inbounds %struct.so_list, %struct.so_list* %56, i32 0, i32 4
  %58 = load %struct.so_list*, %struct.so_list** %57, align 8
  %59 = getelementptr inbounds %struct.so_list, %struct.so_list* %58, i32 0, i32 3
  %60 = load %struct.so_list*, %struct.so_list** %59, align 8
  %61 = call i32 @read_memory(i64 %55, %struct.so_list* %60, i32 4)
  %62 = load %struct.so_list*, %struct.so_list** %7, align 8
  %63 = call i64 @LM_NEXT(%struct.so_list* %62)
  store i64 %63, i64* %2, align 8
  %64 = load %struct.so_list*, %struct.so_list** %7, align 8
  %65 = call i32 @LM_NAME(%struct.so_list* %64)
  %66 = load i32, i32* @SO_NAME_MAX_PATH_SIZE, align 4
  %67 = sub nsw i32 %66, 1
  %68 = call i32 @target_read_string(i32 %65, i8** %6, i32 %67, i32* %5)
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %22
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @safe_strerror(i32 %72)
  %74 = call i32 @warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %99

75:                                               ; preds = %22
  %76 = load %struct.so_list*, %struct.so_list** %7, align 8
  %77 = getelementptr inbounds %struct.so_list, %struct.so_list* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* @SO_NAME_MAX_PATH_SIZE, align 4
  %81 = sub nsw i32 %80, 1
  %82 = call i32 @strncpy(i8* %78, i8* %79, i32 %81)
  %83 = load %struct.so_list*, %struct.so_list** %7, align 8
  %84 = getelementptr inbounds %struct.so_list, %struct.so_list* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* @SO_NAME_MAX_PATH_SIZE, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  store i8 0, i8* %89, align 1
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @xfree(i8* %90)
  %92 = load %struct.so_list*, %struct.so_list** %7, align 8
  %93 = getelementptr inbounds %struct.so_list, %struct.so_list* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.so_list*, %struct.so_list** %7, align 8
  %96 = getelementptr inbounds %struct.so_list, %struct.so_list* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @strcpy(i32 %94, i8* %97)
  br label %99

99:                                               ; preds = %75, %71
  %100 = load %struct.so_list*, %struct.so_list** %7, align 8
  %101 = getelementptr inbounds %struct.so_list, %struct.so_list* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = icmp ne i8 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load %struct.so_list*, %struct.so_list** %7, align 8
  %108 = getelementptr inbounds %struct.so_list, %struct.so_list* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i64 @match_main(i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106, %99
  %113 = load %struct.so_list*, %struct.so_list** %7, align 8
  %114 = call i32 @free_so(%struct.so_list* %113)
  br label %122

115:                                              ; preds = %106
  %116 = load %struct.so_list*, %struct.so_list** %7, align 8
  %117 = getelementptr inbounds %struct.so_list, %struct.so_list* %116, i32 0, i32 1
  store %struct.so_list* null, %struct.so_list** %117, align 8
  %118 = load %struct.so_list*, %struct.so_list** %7, align 8
  %119 = load %struct.so_list**, %struct.so_list*** %4, align 8
  store %struct.so_list* %118, %struct.so_list** %119, align 8
  %120 = load %struct.so_list*, %struct.so_list** %7, align 8
  %121 = getelementptr inbounds %struct.so_list, %struct.so_list* %120, i32 0, i32 1
  store %struct.so_list** %121, %struct.so_list*** %4, align 8
  br label %122

122:                                              ; preds = %115, %112
  %123 = load %struct.cleanup*, %struct.cleanup** %8, align 8
  %124 = call i32 @discard_cleanups(%struct.cleanup* %123)
  br label %19

125:                                              ; preds = %19
  %126 = load %struct.so_list*, %struct.so_list** %3, align 8
  store %struct.so_list* %126, %struct.so_list** %1, align 8
  br label %127

127:                                              ; preds = %125, %15
  %128 = load %struct.so_list*, %struct.so_list** %1, align 8
  ret %struct.so_list* %128
}

declare dso_local i64 @locate_base(...) #1

declare dso_local i64 @first_link_map_member(...) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32 (i8*)*, %struct.so_list*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @memset(%struct.so_list*, i32, i32) #1

declare dso_local i32 @read_memory(i64, %struct.so_list*, i32) #1

declare dso_local i64 @LM_NEXT(%struct.so_list*) #1

declare dso_local i32 @target_read_string(i32, i8**, i32, i32*) #1

declare dso_local i32 @LM_NAME(%struct.so_list*) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @safe_strerror(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @match_main(i8*) #1

declare dso_local i32 @free_so(%struct.so_list*) #1

declare dso_local i32 @discard_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
