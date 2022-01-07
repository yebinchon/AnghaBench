; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_vectx.c_vectx_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_vectx.c_vectx_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i32*)* }
%struct.vectx = type { i32, i8*, i8*, i32, i64, %struct.TYPE_6__, %struct.TYPE_7__*, i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.stat = type { i32, i32 }

@VE_FINGERPRINT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s: no entry\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"no_hash\00", align 1
@VE_FINGERPRINT_IGNORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"sha256=\00", align 1
@br_sha256_vtable = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@br_sha256_SIZE = common dso_local global i64 0, align 8
@VE_FINGERPRINT_UNKNOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: no supported fingerprint\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@br_sha1_SIZE = common dso_local global i64 0, align 8
@br_sha1_vtable = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@br_sha384_SIZE = common dso_local global i64 0, align 8
@br_sha384_vtable = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@br_sha512_SIZE = common dso_local global i64 0, align 8
@br_sha512_vtable = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vectx* @vectx_open(i32 %0, i8* %1, i32 %2, %struct.stat* %3, i32* %4) #0 {
  %6 = alloca %struct.vectx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.vectx*, align 8
  %13 = alloca %struct.stat, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.stat* %3, %struct.stat** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.stat*, %struct.stat** %10, align 8
  %17 = icmp ne %struct.stat* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @fstat(i32 %19, %struct.stat* %13)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store %struct.stat* %13, %struct.stat** %10, align 8
  br label %23

23:                                               ; preds = %22, %18
  br label %24

24:                                               ; preds = %23, %5
  %25 = load %struct.stat*, %struct.stat** %10, align 8
  %26 = icmp ne %struct.stat* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.stat*, %struct.stat** %10, align 8
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @S_ISREG(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = load i32*, i32** %11, align 8
  store i32 0, i32* %34, align 4
  store %struct.vectx* null, %struct.vectx** %6, align 8
  br label %136

35:                                               ; preds = %27, %24
  %36 = call %struct.vectx* @malloc(i32 72)
  store %struct.vectx* %36, %struct.vectx** %12, align 8
  %37 = load %struct.vectx*, %struct.vectx** %12, align 8
  %38 = icmp ne %struct.vectx* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %131

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.vectx*, %struct.vectx** %12, align 8
  %43 = getelementptr inbounds %struct.vectx, %struct.vectx* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.vectx*, %struct.vectx** %12, align 8
  %46 = getelementptr inbounds %struct.vectx, %struct.vectx* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.stat*, %struct.stat** %10, align 8
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.vectx*, %struct.vectx** %12, align 8
  %51 = getelementptr inbounds %struct.vectx, %struct.vectx* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 8
  %52 = load %struct.vectx*, %struct.vectx** %12, align 8
  %53 = getelementptr inbounds %struct.vectx, %struct.vectx* %52, i32 0, i32 7
  store i64 0, i64* %53, align 8
  %54 = load %struct.vectx*, %struct.vectx** %12, align 8
  %55 = getelementptr inbounds %struct.vectx, %struct.vectx* %54, i32 0, i32 2
  store i8* null, i8** %55, align 8
  %56 = load %struct.vectx*, %struct.vectx** %12, align 8
  %57 = getelementptr inbounds %struct.vectx, %struct.vectx* %56, i32 0, i32 3
  store i32 0, i32* %57, align 8
  store i64 0, i64* %14, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = call i8* @fingerprint_info_lookup(i32 %58, i8* %59)
  store i8* %60, i8** %15, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %40
  %64 = load i32, i32* @VE_FINGERPRINT_NONE, align 4
  %65 = load %struct.vectx*, %struct.vectx** %12, align 8
  %66 = getelementptr inbounds %struct.vectx, %struct.vectx* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @ve_error_set(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %67)
  br label %95

69:                                               ; preds = %40
  %70 = load i8*, i8** %15, align 8
  %71 = call i64 @strncmp(i8* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32, i32* @VE_FINGERPRINT_IGNORE, align 4
  %75 = load %struct.vectx*, %struct.vectx** %12, align 8
  %76 = getelementptr inbounds %struct.vectx, %struct.vectx* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  store i64 0, i64* %14, align 8
  br label %94

77:                                               ; preds = %69
  %78 = load i8*, i8** %15, align 8
  %79 = call i64 @strncmp(i8* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load %struct.vectx*, %struct.vectx** %12, align 8
  %83 = getelementptr inbounds %struct.vectx, %struct.vectx* %82, i32 0, i32 6
  store %struct.TYPE_7__* @br_sha256_vtable, %struct.TYPE_7__** %83, align 8
  %84 = load i64, i64* @br_sha256_SIZE, align 8
  store i64 %84, i64* %14, align 8
  %85 = load i8*, i8** %15, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 7
  store i8* %86, i8** %15, align 8
  br label %93

87:                                               ; preds = %77
  %88 = load i32, i32* @VE_FINGERPRINT_UNKNOWN, align 4
  %89 = load %struct.vectx*, %struct.vectx** %12, align 8
  %90 = getelementptr inbounds %struct.vectx, %struct.vectx* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @ve_error_set(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %87, %81
  br label %94

94:                                               ; preds = %93, %73
  br label %95

95:                                               ; preds = %94, %63
  %96 = load %struct.vectx*, %struct.vectx** %12, align 8
  %97 = getelementptr inbounds %struct.vectx, %struct.vectx* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** %11, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i64, i64* %14, align 8
  %101 = load %struct.vectx*, %struct.vectx** %12, align 8
  %102 = getelementptr inbounds %struct.vectx, %struct.vectx* %101, i32 0, i32 4
  store i64 %100, i64* %102, align 8
  %103 = load i8*, i8** %15, align 8
  %104 = load %struct.vectx*, %struct.vectx** %12, align 8
  %105 = getelementptr inbounds %struct.vectx, %struct.vectx* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  %106 = load i64, i64* %14, align 8
  %107 = icmp ugt i64 %106, 0
  br i1 %107, label %108, label %129

108:                                              ; preds = %95
  %109 = load %struct.vectx*, %struct.vectx** %12, align 8
  %110 = getelementptr inbounds %struct.vectx, %struct.vectx* %109, i32 0, i32 6
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32 (i32*)*, i32 (i32*)** %112, align 8
  %114 = load %struct.vectx*, %struct.vectx** %12, align 8
  %115 = getelementptr inbounds %struct.vectx, %struct.vectx* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = call i32 %113(i32* %116)
  %118 = load i32, i32* %9, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %108
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @SEEK_SET, align 4
  %123 = call i32 @lseek(i32 %121, i32 0, i32 %122)
  %124 = load %struct.vectx*, %struct.vectx** %12, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @SEEK_SET, align 4
  %127 = call i32 @vectx_lseek(%struct.vectx* %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %120, %108
  br label %129

129:                                              ; preds = %128, %95
  %130 = load %struct.vectx*, %struct.vectx** %12, align 8
  store %struct.vectx* %130, %struct.vectx** %6, align 8
  br label %136

131:                                              ; preds = %39
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = load i32*, i32** %11, align 8
  store i32 %132, i32* %133, align 4
  %134 = load %struct.vectx*, %struct.vectx** %12, align 8
  %135 = call i32 @free(%struct.vectx* %134)
  store %struct.vectx* null, %struct.vectx** %6, align 8
  br label %136

136:                                              ; preds = %131, %129, %33
  %137 = load %struct.vectx*, %struct.vectx** %6, align 8
  ret %struct.vectx* %137
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local %struct.vectx* @malloc(i32) #1

declare dso_local i8* @fingerprint_info_lookup(i32, i8*) #1

declare dso_local i32 @ve_error_set(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @vectx_lseek(%struct.vectx*, i32, i32) #1

declare dso_local i32 @free(%struct.vectx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
