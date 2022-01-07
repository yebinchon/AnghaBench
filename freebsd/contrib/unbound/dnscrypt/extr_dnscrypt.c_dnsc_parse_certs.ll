; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_parse_certs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_parse_certs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnsc_env = type { i32, i32, i8*, i8** }
%struct.config_file = type { %struct.config_strlist*, %struct.config_strlist* }
%struct.config_strlist = type { i32, %struct.config_strlist* }

@.str = private unnamed_addr constant [40 x i8] c"dnsc_parse_certs: failed to load %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@VERB_OPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Cert %s is rotated and will not be distributed via DNS\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Loaded cert %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dnsc_env*, %struct.config_file*)* @dnsc_parse_certs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnsc_parse_certs(%struct.dnsc_env* %0, %struct.config_file* %1) #0 {
  %3 = alloca %struct.dnsc_env*, align 8
  %4 = alloca %struct.config_file*, align 8
  %5 = alloca %struct.config_strlist*, align 8
  %6 = alloca %struct.config_strlist*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.dnsc_env* %0, %struct.dnsc_env** %3, align 8
  store %struct.config_file* %1, %struct.config_file** %4, align 8
  %10 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %11 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %13 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %12, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = load %struct.config_file*, %struct.config_file** %4, align 8
  %15 = getelementptr inbounds %struct.config_file, %struct.config_file* %14, i32 0, i32 1
  %16 = load %struct.config_strlist*, %struct.config_strlist** %15, align 8
  store %struct.config_strlist* %16, %struct.config_strlist** %5, align 8
  br label %17

17:                                               ; preds = %25, %2
  %18 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %19 = icmp ne %struct.config_strlist* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %22 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add i32 %23, 1
  store i32 %24, i32* %22, align 8
  br label %25

25:                                               ; preds = %20
  %26 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %27 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %26, i32 0, i32 1
  %28 = load %struct.config_strlist*, %struct.config_strlist** %27, align 8
  store %struct.config_strlist* %28, %struct.config_strlist** %5, align 8
  br label %17

29:                                               ; preds = %17
  %30 = load %struct.config_file*, %struct.config_file** %4, align 8
  %31 = getelementptr inbounds %struct.config_file, %struct.config_file* %30, i32 0, i32 0
  %32 = load %struct.config_strlist*, %struct.config_strlist** %31, align 8
  store %struct.config_strlist* %32, %struct.config_strlist** %5, align 8
  br label %33

33:                                               ; preds = %41, %29
  %34 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %35 = icmp ne %struct.config_strlist* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %38 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %36
  %42 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %43 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %42, i32 0, i32 1
  %44 = load %struct.config_strlist*, %struct.config_strlist** %43, align 8
  store %struct.config_strlist* %44, %struct.config_strlist** %5, align 8
  br label %33

45:                                               ; preds = %33
  %46 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %47 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @sodium_allocarray(i32 %48, i32 1)
  %50 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %51 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %53 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @sodium_allocarray(i32 %54, i32 8)
  %56 = bitcast i8* %55 to i8**
  %57 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %58 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %57, i32 0, i32 3
  store i8** %56, i8*** %58, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %59 = load %struct.config_file*, %struct.config_file** %4, align 8
  %60 = getelementptr inbounds %struct.config_file, %struct.config_file* %59, i32 0, i32 1
  %61 = load %struct.config_strlist*, %struct.config_strlist** %60, align 8
  store %struct.config_strlist* %61, %struct.config_strlist** %5, align 8
  br label %62

62:                                               ; preds = %131, %45
  %63 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %64 = icmp ne %struct.config_strlist* %63, null
  br i1 %64, label %65, label %137

65:                                               ; preds = %62
  %66 = load %struct.config_file*, %struct.config_file** %4, align 8
  %67 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %68 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @dnsc_chroot_path(%struct.config_file* %66, i32 %69)
  store i8* %70, i8** %9, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %73 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr i8, i8* %74, i64 %75
  %77 = call i64 @dnsc_read_from_file(i8* %71, i8* %76, i32 4)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %65
  %80 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %81 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @errno, align 4
  %84 = call i32 @strerror(i32 %83)
  %85 = call i32 @fatal_exit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %84)
  br label %86

86:                                               ; preds = %79, %65
  %87 = load %struct.config_file*, %struct.config_file** %4, align 8
  %88 = getelementptr inbounds %struct.config_file, %struct.config_file* %87, i32 0, i32 0
  %89 = load %struct.config_strlist*, %struct.config_strlist** %88, align 8
  store %struct.config_strlist* %89, %struct.config_strlist** %6, align 8
  br label %90

90:                                               ; preds = %121, %86
  %91 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %92 = icmp ne %struct.config_strlist* %91, null
  br i1 %92, label %93, label %125

93:                                               ; preds = %90
  %94 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %95 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %98 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @strcmp(i32 %96, i32 %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %93
  %103 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %104 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = load i64, i64* %7, align 8
  %107 = getelementptr i8, i8* %105, i64 %106
  %108 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %109 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %108, i32 0, i32 3
  %110 = load i8**, i8*** %109, align 8
  %111 = load i64, i64* %8, align 8
  %112 = getelementptr inbounds i8*, i8** %110, i64 %111
  store i8* %107, i8** %112, align 8
  %113 = load i64, i64* %8, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %8, align 8
  %115 = load i32, i32* @VERB_OPS, align 4
  %116 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %117 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @verbose(i32 %115, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  br label %125

120:                                              ; preds = %93
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %123 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %122, i32 0, i32 1
  %124 = load %struct.config_strlist*, %struct.config_strlist** %123, align 8
  store %struct.config_strlist* %124, %struct.config_strlist** %6, align 8
  br label %90

125:                                              ; preds = %102, %90
  %126 = load i32, i32* @VERB_OPS, align 4
  %127 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %128 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @verbose(i32 %126, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %125
  %132 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %133 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %132, i32 0, i32 1
  %134 = load %struct.config_strlist*, %struct.config_strlist** %133, align 8
  store %struct.config_strlist* %134, %struct.config_strlist** %5, align 8
  %135 = load i64, i64* %7, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %7, align 8
  br label %62

137:                                              ; preds = %62
  %138 = load i64, i64* %7, align 8
  %139 = trunc i64 %138 to i32
  ret i32 %139
}

declare dso_local i8* @sodium_allocarray(i32, i32) #1

declare dso_local i8* @dnsc_chroot_path(%struct.config_file*, i32) #1

declare dso_local i64 @dnsc_read_from_file(i8*, i8*, i32) #1

declare dso_local i32 @fatal_exit(i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @verbose(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
