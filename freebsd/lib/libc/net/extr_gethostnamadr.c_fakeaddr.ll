; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_gethostnamadr.c_fakeaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_gethostnamadr.c_fakeaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32, i8*, i8**, i32**, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hostent_data = type { i8*, i8**, i64, i32** }
%struct.in_addr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@NETDB_INTERNAL = common dso_local global i32 0, align 4
@HOST_NOT_FOUND = common dso_local global i32 0, align 4
@MAXDNAME = common dso_local global i64 0, align 8
@RES_USE_INET6 = common dso_local global i32 0, align 4
@NS_INADDRSZ = common dso_local global i32 0, align 4
@NS_IN6ADDRSZ = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@NETDB_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.hostent*, i8*, i64, %struct.TYPE_4__*)* @fakeaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fakeaddr(i8* %0, i32 %1, %struct.hostent* %2, i8* %3, i64 %4, %struct.TYPE_4__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hostent*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca %struct.hostent_data*, align 8
  %15 = alloca %struct.hostent, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.hostent* %2, %struct.hostent** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %13, align 8
  %16 = call %struct.hostent_data* (...) @__hostent_data_init()
  store %struct.hostent_data* %16, %struct.hostent_data** %14, align 8
  %17 = icmp eq %struct.hostent_data* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %6
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* @errno, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %21 = load i32, i32* @NETDB_INTERNAL, align 4
  %22 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_4__* %20, i32 %21)
  store i32 -1, i32* %7, align 4
  br label %134

23:                                               ; preds = %6
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 129
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.hostent_data*, %struct.hostent_data** %14, align 8
  %29 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.in_addr*
  %32 = call i32 @inet_aton(i8* %27, %struct.in_addr* %31)
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %46

34:                                               ; preds = %26, %23
  %35 = load i32, i32* %9, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.hostent_data*, %struct.hostent_data** %14, align 8
  %38 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @inet_pton(i32 %35, i8* %36, i64 %39)
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %44 = load i32, i32* @HOST_NOT_FOUND, align 4
  %45 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_4__* %43, i32 %44)
  store i32 -1, i32* %7, align 4
  br label %134

46:                                               ; preds = %34, %26
  %47 = load %struct.hostent_data*, %struct.hostent_data** %14, align 8
  %48 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i64, i64* @MAXDNAME, align 8
  %52 = call i32 @strncpy(i8* %49, i8* %50, i64 %51)
  %53 = load %struct.hostent_data*, %struct.hostent_data** %14, align 8
  %54 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i64, i64* @MAXDNAME, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 129
  br i1 %59, label %60, label %77

60:                                               ; preds = %46
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @RES_USE_INET6, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %60
  %68 = load %struct.hostent_data*, %struct.hostent_data** %14, align 8
  %69 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.hostent_data*, %struct.hostent_data** %14, align 8
  %73 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = call i32 @_map_v4v6_address(i8* %71, i8* %75)
  store i32 128, i32* %9, align 4
  br label %77

77:                                               ; preds = %67, %60, %46
  %78 = load i32, i32* %9, align 4
  %79 = getelementptr inbounds %struct.hostent, %struct.hostent* %15, i32 0, i32 0
  store i32 %78, i32* %79, align 8
  %80 = load i32, i32* %9, align 4
  switch i32 %80, label %87 [
    i32 129, label %81
    i32 128, label %84
  ]

81:                                               ; preds = %77
  %82 = load i32, i32* @NS_INADDRSZ, align 4
  %83 = getelementptr inbounds %struct.hostent, %struct.hostent* %15, i32 0, i32 4
  store i32 %82, i32* %83, align 8
  br label %92

84:                                               ; preds = %77
  %85 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %86 = getelementptr inbounds %struct.hostent, %struct.hostent* %15, i32 0, i32 4
  store i32 %85, i32* %86, align 8
  br label %92

87:                                               ; preds = %77
  %88 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %88, i32* @errno, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %90 = load i32, i32* @NETDB_INTERNAL, align 4
  %91 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_4__* %89, i32 %90)
  store i32 -1, i32* %7, align 4
  br label %134

92:                                               ; preds = %84, %81
  %93 = load %struct.hostent_data*, %struct.hostent_data** %14, align 8
  %94 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds %struct.hostent, %struct.hostent* %15, i32 0, i32 1
  store i8* %95, i8** %96, align 8
  %97 = load %struct.hostent_data*, %struct.hostent_data** %14, align 8
  %98 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %97, i32 0, i32 3
  %99 = load i32**, i32*** %98, align 8
  %100 = getelementptr inbounds %struct.hostent, %struct.hostent* %15, i32 0, i32 3
  store i32** %99, i32*** %100, align 8
  %101 = load %struct.hostent_data*, %struct.hostent_data** %14, align 8
  %102 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %101, i32 0, i32 3
  %103 = load i32**, i32*** %102, align 8
  %104 = getelementptr inbounds i32*, i32** %103, i64 0
  store i32* null, i32** %104, align 8
  %105 = load %struct.hostent_data*, %struct.hostent_data** %14, align 8
  %106 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i8*
  %109 = load %struct.hostent_data*, %struct.hostent_data** %14, align 8
  %110 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %109, i32 0, i32 1
  %111 = load i8**, i8*** %110, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 0
  store i8* %108, i8** %112, align 8
  %113 = load %struct.hostent_data*, %struct.hostent_data** %14, align 8
  %114 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %113, i32 0, i32 1
  %115 = load i8**, i8*** %114, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 1
  store i8* null, i8** %116, align 8
  %117 = load %struct.hostent_data*, %struct.hostent_data** %14, align 8
  %118 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %117, i32 0, i32 1
  %119 = load i8**, i8*** %118, align 8
  %120 = getelementptr inbounds %struct.hostent, %struct.hostent* %15, i32 0, i32 2
  store i8** %119, i8*** %120, align 8
  %121 = load %struct.hostent*, %struct.hostent** %10, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = load i64, i64* %12, align 8
  %124 = call i64 @__copy_hostent(%struct.hostent* %15, %struct.hostent* %121, i8* %122, i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %92
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %128 = load i32, i32* @NETDB_INTERNAL, align 4
  %129 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_4__* %127, i32 %128)
  store i32 -1, i32* %7, align 4
  br label %134

130:                                              ; preds = %92
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %132 = load i32, i32* @NETDB_SUCCESS, align 4
  %133 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_4__* %131, i32 %132)
  store i32 0, i32* %7, align 4
  br label %134

134:                                              ; preds = %130, %126, %87, %42, %18
  %135 = load i32, i32* %7, align 4
  ret i32 %135
}

declare dso_local %struct.hostent_data* @__hostent_data_init(...) #1

declare dso_local i32 @RES_SET_H_ERRNO(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @inet_aton(i8*, %struct.in_addr*) #1

declare dso_local i32 @inet_pton(i32, i8*, i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @_map_v4v6_address(i8*, i8*) #1

declare dso_local i64 @__copy_hostent(%struct.hostent*, %struct.hostent*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
