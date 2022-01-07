; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_do_load_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_do_load_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32, i32, i32, i64, i32, i64, i32, i32, i32 }
%struct.stat = type { i32 }
%struct.statfs = type { i32, i8* }

@dangerous_ld_env = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Cannot fstatfs \22%s\22\00", align 1
@MNT_NOEXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Cannot execute objects on %s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"loading \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"%s valid_hash_sysv %d valid_hash_gnu %d dynsymcount %d\00", align 1
@RTLD_LO_DLOPEN = common dso_local global i32 0, align 4
@RTLD_LO_TRACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"refusing to load non-loadable \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Cannot dlopen non-loadable %s\00", align 1
@obj_list = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@obj_count = common dso_local global i32 0, align 4
@obj_loads = common dso_local global i32 0, align 4
@max_stack_flags = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"  %p .. %p: %s\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"  WARNING: %s has impure text\00", align 1
@UTRACE_LOAD_OBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32, i8*, i8*, %struct.stat*, i32)* @do_load_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @do_load_object(i32 %0, i8* %1, i8* %2, %struct.stat* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stat*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.statfs, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.stat* %3, %struct.stat** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i64, i64* @dangerous_ld_env, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %5
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @fstatfs(i32 %17, %struct.statfs* %13)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i8*, i8** %9, align 8
  %22 = call i8* @printable_path(i8* %21)
  %23 = call i32 @_rtld_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %22)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %165

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.statfs, %struct.statfs* %13, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MNT_NOEXEC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.statfs, %struct.statfs* %13, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @_rtld_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %165

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %5
  %36 = load i8*, i8** %9, align 8
  %37 = call i8* @printable_path(i8* %36)
  %38 = call i32 (i8*, i8*, ...) @dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = call i8* @printable_path(i8* %40)
  %42 = load %struct.stat*, %struct.stat** %10, align 8
  %43 = call %struct.TYPE_10__* @map_object(i32 %39, i8* %41, %struct.stat* %42)
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %12, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %45 = icmp eq %struct.TYPE_10__* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %165

47:                                               ; preds = %35
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @object_add_name(%struct.TYPE_10__* %51, i8* %52)
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %59 = call i32 @digest_dynamic(%struct.TYPE_10__* %58, i32 0)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i8*, i8*, ...) @dbg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %62, i32 %65, i32 %68, i32 %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %103

77:                                               ; preds = %54
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @RTLD_LO_DLOPEN, align 4
  %80 = load i32, i32* @RTLD_LO_TRACE, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = load i32, i32* @RTLD_LO_DLOPEN, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %77
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i8*, i8*, ...) @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %88)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @_rtld_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %92)
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @munmap(i32 %96, i32 %99)
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %102 = call i32 @obj_free(%struct.TYPE_10__* %101)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %165

103:                                              ; preds = %77, %54
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @RTLD_LO_DLOPEN, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %112 = load i32, i32* @next, align 4
  %113 = call i32 @TAILQ_INSERT_TAIL(i32* @obj_list, %struct.TYPE_10__* %111, i32 %112)
  %114 = load i32, i32* @obj_count, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* @obj_count, align 4
  %116 = load i32, i32* @obj_loads, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* @obj_loads, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %119 = call i32 @linkmap_add(%struct.TYPE_10__* %118)
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @max_stack_flags, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* @max_stack_flags, align 4
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = inttoptr i64 %128 to i8*
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %132, %135
  %137 = sub nsw i32 %136, 1
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 (i8*, i8*, ...) @dbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %129, i32 %137, i8* %140)
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %103
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (i8*, i8*, ...) @dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %149)
  br label %151

151:                                              ; preds = %146, %103
  %152 = load i32, i32* @UTRACE_LOAD_OBJECT, align 4
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @LD_UTRACE(i32 %152, %struct.TYPE_10__* %153, i32 %156, i32 %159, i32 0, i8* %162)
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %164, %struct.TYPE_10__** %6, align 8
  br label %165

165:                                              ; preds = %151, %85, %46, %30, %20
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  ret %struct.TYPE_10__* %166
}

declare dso_local i64 @fstatfs(i32, %struct.statfs*) #1

declare dso_local i32 @_rtld_error(i8*, i8*) #1

declare dso_local i8* @printable_path(i8*) #1

declare dso_local i32 @dbg(i8*, i8*, ...) #1

declare dso_local %struct.TYPE_10__* @map_object(i32, i8*, %struct.stat*) #1

declare dso_local i32 @object_add_name(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @digest_dynamic(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @munmap(i32, i32) #1

declare dso_local i32 @obj_free(%struct.TYPE_10__*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @linkmap_add(%struct.TYPE_10__*) #1

declare dso_local i32 @LD_UTRACE(i32, %struct.TYPE_10__*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
