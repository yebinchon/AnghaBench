; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_marshal.c_svn_ra_svn_create_conn5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_marshal.c_svn_ra_svn_create_conn5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32, i32*, i64, i32, i32*, i32*, i64, i8*, i64, i8*, i64, i64, i64, i32, i32, i32, i32*, i32, i32* }

@SVN_RA_SVN__PAGE_SIZE = common dso_local global i64 0, align 8
@APR_REMOTE = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @svn_ra_svn_create_conn5(i32* %0, i32* %1, i32* %2, i32 %3, i64 %4, i64 %5, i8* %6, i8* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_4__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32* %8, i32** %18, align 8
  %22 = load i32*, i32** %18, align 8
  %23 = load i64, i64* @SVN_RA_SVN__PAGE_SIZE, align 8
  %24 = add i64 160, %23
  %25 = call i8* @apr_palloc(i32* %22, i64 %24)
  store i8* %25, i8** %20, align 8
  %26 = load i8*, i8** %20, align 8
  %27 = ptrtoint i8* %26 to i32
  %28 = load i64, i64* @SVN_RA_SVN__PAGE_SIZE, align 8
  %29 = call i64 @APR_ALIGN(i32 %27, i64 %28)
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %19, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %9
  %35 = load i32*, i32** %11, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32*, i32** %12, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %37, %34, %9
  %41 = load i32*, i32** %10, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i32*, i32** %11, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32*, i32** %12, align 8
  %48 = icmp ne i32* %47, null
  br label %49

49:                                               ; preds = %46, %43, %40
  %50 = phi i1 [ false, %43 ], [ false, %40 ], [ %48, %46 ]
  br label %51

51:                                               ; preds = %49, %37
  %52 = phi i1 [ true, %37 ], [ %50, %49 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 19
  store i32* null, i32** %56, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 16
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 18
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 16
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 17
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 15
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 14
  store i64 0, i64* %70, align 8
  %71 = load i64, i64* %15, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 13
  store i64 %71, i64* %73, align 8
  %74 = load i64, i64* %15, align 8
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i8*, i8** %16, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 12
  store i8* %79, i8** %81, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 11
  store i64 0, i64* %83, align 8
  %84 = load i8*, i8** %17, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 10
  store i8* %84, i8** %86, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 9
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 8
  store i32* null, i32** %90, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 7
  store i32* null, i32** %92, align 8
  %93 = load i32*, i32** %18, align 8
  %94 = call i32 @apr_hash_make(i32* %93)
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load i64, i64* %14, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 5
  store i64 %100, i64* %102, align 8
  %103 = load i32*, i32** %18, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 4
  store i32* %103, i32** %105, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %136

108:                                              ; preds = %51
  %109 = load i32*, i32** %10, align 8
  %110 = load i32*, i32** %18, align 8
  %111 = call i32 @svn_ra_svn__stream_from_sock(i32* %109, i32* %110)
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @APR_REMOTE, align 4
  %115 = load i32*, i32** %10, align 8
  %116 = call i64 @apr_socket_addr_get(i32** %21, i32 %114, i32* %115)
  %117 = load i64, i64* @APR_SUCCESS, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %108
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = load i32*, i32** %21, align 8
  %123 = call i64 @apr_sockaddr_ip_get(i32** %121, i32* %122)
  %124 = load i64, i64* @APR_SUCCESS, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %129, label %126

126:                                              ; preds = %119, %108
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  store i32* null, i32** %128, align 8
  br label %129

129:                                              ; preds = %126, %119
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %134 = call i32 @get_timeout(%struct.TYPE_4__* %133)
  %135 = call i32 @svn_ra_svn__stream_timeout(i32 %132, i32 %134)
  br label %145

136:                                              ; preds = %51
  %137 = load i32*, i32** %11, align 8
  %138 = load i32*, i32** %12, align 8
  %139 = load i32*, i32** %18, align 8
  %140 = call i32 @svn_ra_svn__stream_from_streams(i32* %137, i32* %138, i32* %139)
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  store i32* null, i32** %144, align 8
  br label %145

145:                                              ; preds = %136, %129
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  ret %struct.TYPE_4__* %146
}

declare dso_local i8* @apr_palloc(i32*, i64) #1

declare dso_local i64 @APR_ALIGN(i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i32 @svn_ra_svn__stream_from_sock(i32*, i32*) #1

declare dso_local i64 @apr_socket_addr_get(i32**, i32, i32*) #1

declare dso_local i64 @apr_sockaddr_ip_get(i32**, i32*) #1

declare dso_local i32 @svn_ra_svn__stream_timeout(i32, i32) #1

declare dso_local i32 @get_timeout(%struct.TYPE_4__*) #1

declare dso_local i32 @svn_ra_svn__stream_from_streams(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
