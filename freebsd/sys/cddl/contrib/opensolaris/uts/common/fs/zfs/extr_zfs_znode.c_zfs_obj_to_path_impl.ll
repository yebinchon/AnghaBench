; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_znode.c_zfs_obj_to_path_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_znode.c_zfs_obj_to_path_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MASTER_NODE_OBJ = common dso_local global i32 0, align 4
@ZFS_UNLINKED_SET = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@MAXNAMELEN = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"<xattrdir>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i32*, i8*, i32)* @zfs_obj_to_path_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_obj_to_path_impl(i32* %0, i64 %1, i32* %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = getelementptr inbounds i8, i8* %30, i64 -1
  store i8* %31, i8** %18, align 8
  %32 = load i8*, i8** %18, align 8
  store i8 0, i8* %32, align 1
  %33 = load i32*, i32** %10, align 8
  store i32* %33, i32** %14, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* @MASTER_NODE_OBJ, align 4
  %36 = load i32, i32* @ZFS_UNLINKED_SET, align 4
  %37 = call i32 @zap_lookup(i32* %34, i32 %35, i32 %36, i32 8, i32 1, i64* %20)
  %38 = call i32 @VERIFY0(i32 %37)
  %39 = load i32*, i32** %8, align 8
  %40 = load i64, i64* %20, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @zap_lookup_int(i32* %39, i64 %40, i64 %41)
  store i32 %42, i32* %19, align 4
  %43 = load i32, i32* %19, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %6
  %46 = load i32, i32* @ESTALE, align 4
  store i32 %46, i32* %7, align 4
  br label %177

47:                                               ; preds = %6
  %48 = load i32, i32* %19, align 4
  %49 = load i32, i32* @ENOENT, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* %19, align 4
  store i32 %52, i32* %7, align 4
  br label %177

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53
  store i32 0, i32* %19, align 4
  br label %55

55:                                               ; preds = %142, %54
  %56 = load i32, i32* @MAXNAMELEN, align 4
  %57 = add nsw i32 %56, 2
  %58 = zext i32 %57 to i64
  %59 = call i8* @llvm.stacksave()
  store i8* %59, i8** %22, align 8
  %60 = alloca i8, i64 %58, align 16
  store i64 %58, i64* %23, align 8
  %61 = load i32*, i32** %16, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load i32*, i32** %15, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = load i32, i32* @FTAG, align 4
  %67 = call i32 @zfs_release_sa_handle(i32* %64, i32* %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %55
  %69 = load i32*, i32** %8, align 8
  %70 = load i32*, i32** %14, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @zfs_obj_to_pobj(i32* %69, i32* %70, i32* %71, i64* %21, i32* %25)
  store i32 %72, i32* %19, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 2, i32* %26, align 4
  br label %139

75:                                               ; preds = %68
  %76 = load i64, i64* %21, align 8
  %77 = load i64, i64* %9, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = load i8*, i8** %18, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 47
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i8*, i8** %18, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 -1
  store i8* %87, i8** %18, align 8
  store i8 47, i8* %87, align 1
  br label %88

88:                                               ; preds = %85, %79
  store i32 2, i32* %26, align 4
  br label %139

89:                                               ; preds = %75
  %90 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 47, i8* %90, align 16
  %91 = load i32, i32* %25, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = getelementptr inbounds i8, i8* %60, i64 1
  %95 = call i32 @sprintf(i8* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %107

96:                                               ; preds = %89
  %97 = load i32*, i32** %8, align 8
  %98 = load i64, i64* %21, align 8
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @ZFS_DIRENT_OBJ(i64 -1)
  %101 = getelementptr inbounds i8, i8* %60, i64 1
  %102 = call i32 @zap_value_search(i32* %97, i64 %98, i64 %99, i32 %100, i8* %101)
  store i32 %102, i32* %19, align 4
  %103 = load i32, i32* %19, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  store i32 2, i32* %26, align 4
  br label %139

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106, %93
  %108 = call i64 @strlen(i8* %60)
  store i64 %108, i64* %24, align 8
  %109 = load i64, i64* %24, align 8
  %110 = load i8*, i8** %18, align 8
  %111 = sub i64 0, %109
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8* %112, i8** %18, align 8
  %113 = load i8*, i8** %18, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = icmp uge i8* %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @ASSERT(i32 %116)
  %118 = load i8*, i8** %18, align 8
  %119 = load i64, i64* %24, align 8
  %120 = call i32 @bcopy(i8* %60, i8* %118, i64 %119)
  %121 = load i64, i64* %21, align 8
  store i64 %121, i64* %9, align 8
  %122 = load i32*, i32** %14, align 8
  %123 = load i32*, i32** %10, align 8
  %124 = icmp ne i32* %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %107
  %126 = load i32*, i32** %14, align 8
  store i32* %126, i32** %15, align 8
  %127 = load i32*, i32** %17, align 8
  store i32* %127, i32** %16, align 8
  br label %128

128:                                              ; preds = %125, %107
  %129 = load i32*, i32** %8, align 8
  %130 = load i64, i64* %9, align 8
  %131 = load i32, i32* @FTAG, align 4
  %132 = call i32 @zfs_grab_sa_handle(i32* %129, i64 %130, i32** %14, i32** %17, i32 %131)
  store i32 %132, i32* %19, align 4
  %133 = load i32, i32* %19, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  %136 = load i32*, i32** %15, align 8
  store i32* %136, i32** %14, align 8
  %137 = load i32*, i32** %16, align 8
  store i32* %137, i32** %17, align 8
  store i32 2, i32* %26, align 4
  br label %139

138:                                              ; preds = %128
  store i32 0, i32* %26, align 4
  br label %139

139:                                              ; preds = %138, %135, %105, %88, %74
  %140 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i32, i32* %26, align 4
  switch i32 %141, label %179 [
    i32 0, label %142
    i32 2, label %143
  ]

142:                                              ; preds = %139
  br label %55

143:                                              ; preds = %139
  %144 = load i32*, i32** %14, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %159

146:                                              ; preds = %143
  %147 = load i32*, i32** %14, align 8
  %148 = load i32*, i32** %10, align 8
  %149 = icmp ne i32* %147, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %146
  %151 = load i32*, i32** %17, align 8
  %152 = icmp ne i32* %151, null
  %153 = zext i1 %152 to i32
  %154 = call i32 @ASSERT(i32 %153)
  %155 = load i32*, i32** %14, align 8
  %156 = load i32*, i32** %17, align 8
  %157 = load i32, i32* @FTAG, align 4
  %158 = call i32 @zfs_release_sa_handle(i32* %155, i32* %156, i32 %157)
  br label %159

159:                                              ; preds = %150, %146, %143
  %160 = load i32, i32* %19, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %175

162:                                              ; preds = %159
  %163 = load i8*, i8** %12, align 8
  %164 = load i8*, i8** %18, align 8
  %165 = load i8*, i8** %12, align 8
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  %169 = load i8*, i8** %18, align 8
  %170 = ptrtoint i8* %168 to i64
  %171 = ptrtoint i8* %169 to i64
  %172 = sub i64 %170, %171
  %173 = trunc i64 %172 to i32
  %174 = call i32 @memmove(i8* %163, i8* %164, i32 %173)
  br label %175

175:                                              ; preds = %162, %159
  %176 = load i32, i32* %19, align 4
  store i32 %176, i32* %7, align 4
  br label %177

177:                                              ; preds = %175, %51, %45
  %178 = load i32, i32* %7, align 4
  ret i32 %178

179:                                              ; preds = %139
  unreachable
}

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_lookup(i32*, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @zap_lookup_int(i32*, i64, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @zfs_release_sa_handle(i32*, i32*, i32) #1

declare dso_local i32 @zfs_obj_to_pobj(i32*, i32*, i32*, i64*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @zap_value_search(i32*, i64, i64, i32, i8*) #1

declare dso_local i32 @ZFS_DIRENT_OBJ(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32 @zfs_grab_sa_handle(i32*, i64, i32**, i32**, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
