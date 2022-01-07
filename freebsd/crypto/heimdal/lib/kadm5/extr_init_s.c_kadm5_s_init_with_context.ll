; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_init_s.c_kadm5_s_init_with_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_init_s.c_kadm5_s_init_with_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_9__, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, i8*, %struct.TYPE_8__, i32* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_9__ = type { i32*, i32*, i32* }

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i8*, i32*, i64, i64, i8**)* @kadm5_s_init_with_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kadm5_s_init_with_context(i32 %0, i8* %1, i8* %2, i32* %3, i64 %4, i64 %5, i8** %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i8** %6, i8*** %15, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @_kadm5_s_init_context(%struct.TYPE_12__** %17, i32* %18, i32 %19)
  store i64 %20, i64* %16, align 8
  %21 = load i64, i64* %16, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %7
  %24 = load i64, i64* %16, align 8
  store i64 %24, i64* %8, align 8
  br label %127

25:                                               ; preds = %7
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i64 @hdb_create(i32 %67, i32* %69, i32* %73)
  store i64 %74, i64* %16, align 8
  %75 = load i64, i64* %16, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %25
  %78 = load i64, i64* %16, align 8
  store i64 %78, i64* %8, align 8
  br label %127

79:                                               ; preds = %25
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i64 @hdb_set_master_keyfile(i32 %82, i32 %85, i32* %89)
  store i64 %90, i64* %16, align 8
  %91 = load i64, i64* %16, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %79
  %94 = load i64, i64* %16, align 8
  store i64 %94, i64* %8, align 8
  br label %127

95:                                               ; preds = %79
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  store i32 -1, i32* %98, align 8
  %99 = load i32, i32* @AF_UNIX, align 4
  %100 = load i32, i32* @SOCK_DGRAM, align 4
  %101 = call i8* @socket(i32 %99, i32 %100, i32 0)
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 2
  store i8* %101, i8** %104, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %10, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = call i64 @krb5_parse_name(i32 %107, i8* %108, i32* %110)
  store i64 %111, i64* %16, align 8
  %112 = load i64, i64* %16, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %95
  %115 = load i64, i64* %16, align 8
  store i64 %115, i64* %8, align 8
  br label %127

116:                                              ; preds = %95
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %118 = call i64 @_kadm5_acl_init(%struct.TYPE_12__* %117)
  store i64 %118, i64* %16, align 8
  %119 = load i64, i64* %16, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i64, i64* %16, align 8
  store i64 %122, i64* %8, align 8
  br label %127

123:                                              ; preds = %116
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %125 = bitcast %struct.TYPE_12__* %124 to i8*
  %126 = load i8**, i8*** %15, align 8
  store i8* %125, i8** %126, align 8
  store i64 0, i64* %8, align 8
  br label %127

127:                                              ; preds = %123, %121, %114, %93, %77, %23
  %128 = load i64, i64* %8, align 8
  ret i64 %128
}

declare dso_local i64 @_kadm5_s_init_context(%struct.TYPE_12__**, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @hdb_create(i32, i32*, i32*) #1

declare dso_local i64 @hdb_set_master_keyfile(i32, i32, i32*) #1

declare dso_local i8* @socket(i32, i32, i32) #1

declare dso_local i64 @krb5_parse_name(i32, i8*, i32*) #1

declare dso_local i64 @_kadm5_acl_init(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
