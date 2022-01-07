; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_policy.c_secpolicy_vnode_setattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_policy.c_secpolicy_vnode_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.vattr = type { i32, i64, i64, i32, i32 }

@AT_SIZE = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@EISDIR = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@AT_MODE = common dso_local global i32 0, align 4
@AT_UID = common dso_local global i32 0, align 4
@AT_GID = common dso_local global i32 0, align 4
@PRIV_VFS_CHOWN = common dso_local global i32 0, align 4
@AT_ATIME = common dso_local global i32 0, align 4
@AT_MTIME = common dso_local global i32 0, align 4
@VA_UTIMES_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @secpolicy_vnode_setattr(i32* %0, %struct.TYPE_6__* %1, %struct.vattr* %2, %struct.vattr* %3, i32 %4, i32 (i8*, i32, i32*)* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.vattr*, align 8
  %12 = alloca %struct.vattr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32 (i8*, i32, i32*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %10, align 8
  store %struct.vattr* %2, %struct.vattr** %11, align 8
  store %struct.vattr* %3, %struct.vattr** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 (i8*, i32, i32*)* %5, i32 (i8*, i32, i32*)** %14, align 8
  store i8* %6, i8** %15, align 8
  %18 = load %struct.vattr*, %struct.vattr** %11, align 8
  %19 = getelementptr inbounds %struct.vattr, %struct.vattr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  %22 = load i32, i32* @AT_SIZE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %7
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VDIR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @EISDIR, align 4
  store i32 %32, i32* %8, align 4
  br label %213

33:                                               ; preds = %25
  %34 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %14, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = load i32, i32* @VWRITE, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 %34(i8* %35, i32 %36, i32* %37)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %17, align 4
  store i32 %42, i32* %8, align 4
  br label %213

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %7
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* @AT_MODE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %44
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load %struct.vattr*, %struct.vattr** %12, align 8
  %53 = getelementptr inbounds %struct.vattr, %struct.vattr* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @secpolicy_vnode_setdac(%struct.TYPE_6__* %50, i32* %51, i64 %54)
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %17, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %17, align 4
  store i32 %59, i32* %8, align 4
  br label %213

60:                                               ; preds = %49
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %62 = load %struct.vattr*, %struct.vattr** %11, align 8
  %63 = load %struct.vattr*, %struct.vattr** %12, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @secpolicy_setid_setsticky_clear(%struct.TYPE_6__* %61, %struct.vattr* %62, %struct.vattr* %63, i32* %64)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* %17, align 4
  store i32 %69, i32* %8, align 4
  br label %213

70:                                               ; preds = %60
  br label %77

71:                                               ; preds = %44
  %72 = load %struct.vattr*, %struct.vattr** %12, align 8
  %73 = getelementptr inbounds %struct.vattr, %struct.vattr* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.vattr*, %struct.vattr** %11, align 8
  %76 = getelementptr inbounds %struct.vattr, %struct.vattr* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %71, %70
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* @AT_UID, align 4
  %80 = load i32, i32* @AT_GID, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %177

84:                                               ; preds = %77
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = load %struct.vattr*, %struct.vattr** %12, align 8
  %88 = getelementptr inbounds %struct.vattr, %struct.vattr* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @secpolicy_vnode_setdac(%struct.TYPE_6__* %85, i32* %86, i64 %89)
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32, i32* %17, align 4
  store i32 %94, i32* %8, align 4
  br label %213

95:                                               ; preds = %84
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* @AT_UID, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load %struct.vattr*, %struct.vattr** %11, align 8
  %102 = getelementptr inbounds %struct.vattr, %struct.vattr* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.vattr*, %struct.vattr** %12, align 8
  %105 = getelementptr inbounds %struct.vattr, %struct.vattr* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %103, %106
  br i1 %107, label %128, label %108

108:                                              ; preds = %100, %95
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* @AT_GID, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %145

113:                                              ; preds = %108
  %114 = load %struct.vattr*, %struct.vattr** %11, align 8
  %115 = getelementptr inbounds %struct.vattr, %struct.vattr* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.vattr*, %struct.vattr** %12, align 8
  %118 = getelementptr inbounds %struct.vattr, %struct.vattr* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %116, %119
  br i1 %120, label %121, label %145

121:                                              ; preds = %113
  %122 = load %struct.vattr*, %struct.vattr** %11, align 8
  %123 = getelementptr inbounds %struct.vattr, %struct.vattr* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = call i32 @groupmember(i64 %124, i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %145, label %128

128:                                              ; preds = %121, %100
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = call i64 @secpolicy_fs_owner(i32 %131, i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %128
  %136 = load i32*, i32** %9, align 8
  %137 = load i32, i32* @PRIV_VFS_CHOWN, align 4
  %138 = call i32 @priv_check_cred(i32* %136, i32 %137)
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i32, i32* %17, align 4
  store i32 %142, i32* %8, align 4
  br label %213

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %143, %128
  br label %145

145:                                              ; preds = %144, %121, %113, %108
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* @AT_UID, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  %151 = load %struct.vattr*, %struct.vattr** %11, align 8
  %152 = getelementptr inbounds %struct.vattr, %struct.vattr* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.vattr*, %struct.vattr** %12, align 8
  %155 = getelementptr inbounds %struct.vattr, %struct.vattr* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %153, %156
  br i1 %157, label %171, label %158

158:                                              ; preds = %150, %145
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* @AT_GID, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %158
  %164 = load %struct.vattr*, %struct.vattr** %11, align 8
  %165 = getelementptr inbounds %struct.vattr, %struct.vattr* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.vattr*, %struct.vattr** %12, align 8
  %168 = getelementptr inbounds %struct.vattr, %struct.vattr* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %166, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %163, %150
  %172 = load %struct.vattr*, %struct.vattr** %11, align 8
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %174 = load i32*, i32** %9, align 8
  %175 = call i32 @secpolicy_setid_clear(%struct.vattr* %172, %struct.TYPE_6__* %173, i32* %174)
  br label %176

176:                                              ; preds = %171, %163, %158
  br label %177

177:                                              ; preds = %176, %77
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* @AT_ATIME, align 4
  %180 = load i32, i32* @AT_MTIME, align 4
  %181 = or i32 %179, %180
  %182 = and i32 %178, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %212

184:                                              ; preds = %177
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %186 = load i32*, i32** %9, align 8
  %187 = load %struct.vattr*, %struct.vattr** %12, align 8
  %188 = getelementptr inbounds %struct.vattr, %struct.vattr* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @secpolicy_vnode_setdac(%struct.TYPE_6__* %185, i32* %186, i64 %189)
  store i32 %190, i32* %17, align 4
  %191 = load i32, i32* %17, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %206

193:                                              ; preds = %184
  %194 = load %struct.vattr*, %struct.vattr** %11, align 8
  %195 = getelementptr inbounds %struct.vattr, %struct.vattr* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @VA_UTIMES_NULL, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %193
  %201 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %14, align 8
  %202 = load i8*, i8** %15, align 8
  %203 = load i32, i32* @VWRITE, align 4
  %204 = load i32*, i32** %9, align 8
  %205 = call i32 %201(i8* %202, i32 %203, i32* %204)
  store i32 %205, i32* %17, align 4
  br label %206

206:                                              ; preds = %200, %193, %184
  %207 = load i32, i32* %17, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = load i32, i32* %17, align 4
  store i32 %210, i32* %8, align 4
  br label %213

211:                                              ; preds = %206
  br label %212

212:                                              ; preds = %211, %177
  store i32 0, i32* %8, align 4
  br label %213

213:                                              ; preds = %212, %209, %141, %93, %68, %58, %41, %31
  %214 = load i32, i32* %8, align 4
  ret i32 %214
}

declare dso_local i32 @secpolicy_vnode_setdac(%struct.TYPE_6__*, i32*, i64) #1

declare dso_local i32 @secpolicy_setid_setsticky_clear(%struct.TYPE_6__*, %struct.vattr*, %struct.vattr*, i32*) #1

declare dso_local i32 @groupmember(i64, i32*) #1

declare dso_local i64 @secpolicy_fs_owner(i32, i32*) #1

declare dso_local i32 @priv_check_cred(i32*, i32) #1

declare dso_local i32 @secpolicy_setid_clear(%struct.vattr*, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
