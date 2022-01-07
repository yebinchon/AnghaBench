; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_get_vnode_info_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_get_vnode_info_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filestat = type { i32, i32, i8*, i32, i8*, i8*, i8*, i32, i8*, %struct.kinfo_vmentry* }
%struct.kinfo_vmentry = type { i8*, i32, i8*, i32, i32, %struct.TYPE_4__, i32, i8*, i8*, i32, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i32, i8*, i8* }
%struct.vnstat = type { i32, i32, i8*, i32, i8*, i8*, i8*, i32, i8*, %struct.kinfo_vmentry* }
%struct.statfs = type { i8* }
%struct.kinfo_file = type { i8*, i32, i8*, i32, i32, %struct.TYPE_4__, i32, i8*, i8*, i32, i8*, i8* }

@PS_FST_UFLAG_MMAP = common dso_local global i32 0, align 4
@PS_FST_VTYPE_VNON = common dso_local global i32 0, align 4
@PS_FST_VTYPE_VBAD = common dso_local global i32 0, align 4
@KF_ATTR_VALID = common dso_local global i32 0, align 4
@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"? (no info available)\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@PS_FST_VTYPE_VBLK = common dso_local global i32 0, align 4
@S_IFBLK = common dso_local global i32 0, align 4
@PS_FST_VTYPE_VCHR = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.filestat*, %struct.vnstat*, i8*)* @procstat_get_vnode_info_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @procstat_get_vnode_info_sysctl(%struct.filestat* %0, %struct.vnstat* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.filestat*, align 8
  %6 = alloca %struct.vnstat*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.statfs, align 8
  %9 = alloca %struct.kinfo_file*, align 8
  %10 = alloca %struct.kinfo_vmentry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.filestat* %0, %struct.filestat** %5, align 8
  store %struct.vnstat* %1, %struct.vnstat** %6, align 8
  store i8* %2, i8** %7, align 8
  %20 = load %struct.filestat*, %struct.filestat** %5, align 8
  %21 = bitcast %struct.filestat* %20 to %struct.vnstat*
  %22 = call i32 @assert(%struct.vnstat* %21)
  %23 = load %struct.vnstat*, %struct.vnstat** %6, align 8
  %24 = call i32 @assert(%struct.vnstat* %23)
  %25 = load %struct.vnstat*, %struct.vnstat** %6, align 8
  %26 = call i32 @bzero(%struct.vnstat* %25, i32 72)
  %27 = load %struct.filestat*, %struct.filestat** %5, align 8
  %28 = getelementptr inbounds %struct.filestat, %struct.filestat* %27, i32 0, i32 9
  %29 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %28, align 8
  %30 = icmp eq %struct.kinfo_vmentry* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %206

32:                                               ; preds = %3
  %33 = load %struct.filestat*, %struct.filestat** %5, align 8
  %34 = getelementptr inbounds %struct.filestat, %struct.filestat* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PS_FST_UFLAG_MMAP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %32
  %40 = load %struct.filestat*, %struct.filestat** %5, align 8
  %41 = getelementptr inbounds %struct.filestat, %struct.filestat* %40, i32 0, i32 9
  %42 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %41, align 8
  store %struct.kinfo_vmentry* %42, %struct.kinfo_vmentry** %10, align 8
  %43 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %10, align 8
  %44 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %43, i32 0, i32 11
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %13, align 8
  %46 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %10, align 8
  %47 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %46, i32 0, i32 10
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %15, align 8
  %49 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %10, align 8
  %50 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %17, align 4
  %52 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %10, align 8
  %53 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %12, align 8
  %55 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %10, align 8
  %56 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %55, i32 0, i32 8
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %16, align 8
  %58 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %10, align 8
  %59 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %58, i32 0, i32 7
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %14, align 8
  %61 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %10, align 8
  %62 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @kinfo_vtype2fst(i32 %63)
  store i32 %64, i32* %18, align 4
  %65 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %10, align 8
  %66 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %19, align 4
  br label %108

68:                                               ; preds = %32
  %69 = load %struct.filestat*, %struct.filestat** %5, align 8
  %70 = getelementptr inbounds %struct.filestat, %struct.filestat* %69, i32 0, i32 9
  %71 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %70, align 8
  %72 = bitcast %struct.kinfo_vmentry* %71 to %struct.kinfo_file*
  store %struct.kinfo_file* %72, %struct.kinfo_file** %9, align 8
  %73 = load %struct.kinfo_file*, %struct.kinfo_file** %9, align 8
  %74 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 4
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %13, align 8
  %78 = load %struct.kinfo_file*, %struct.kinfo_file** %9, align 8
  %79 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %15, align 8
  %83 = load %struct.kinfo_file*, %struct.kinfo_file** %9, align 8
  %84 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %17, align 4
  %88 = load %struct.kinfo_file*, %struct.kinfo_file** %9, align 8
  %89 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %12, align 8
  %91 = load %struct.kinfo_file*, %struct.kinfo_file** %9, align 8
  %92 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %16, align 8
  %96 = load %struct.kinfo_file*, %struct.kinfo_file** %9, align 8
  %97 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %14, align 8
  %101 = load %struct.kinfo_file*, %struct.kinfo_file** %9, align 8
  %102 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @kinfo_vtype2fst(i32 %103)
  store i32 %104, i32* %18, align 4
  %105 = load %struct.kinfo_file*, %struct.kinfo_file** %9, align 8
  %106 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %19, align 4
  br label %108

108:                                              ; preds = %68, %39
  %109 = load i32, i32* %18, align 4
  %110 = load %struct.vnstat*, %struct.vnstat** %6, align 8
  %111 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* @PS_FST_VTYPE_VNON, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %108
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* @PS_FST_VTYPE_VBAD, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %115, %108
  store i32 0, i32* %4, align 4
  br label %206

120:                                              ; preds = %115
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* @KF_ATTR_VALID, align 4
  %123 = and i32 %121, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %120
  %126 = load i8*, i8** %7, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i8*, i8** %7, align 8
  %130 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %131 = call i32 @snprintf(i8* %129, i32 %130, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %132

132:                                              ; preds = %128, %125
  store i32 1, i32* %4, align 4
  br label %206

133:                                              ; preds = %120
  %134 = load i8*, i8** %12, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %149

136:                                              ; preds = %133
  %137 = load i8*, i8** %12, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = load i8*, i8** %12, align 8
  %143 = call i32 @statfs(i8* %142, %struct.statfs* %8)
  %144 = getelementptr inbounds %struct.statfs, %struct.statfs* %8, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i8* @strdup(i8* %145)
  %147 = load %struct.vnstat*, %struct.vnstat** %6, align 8
  %148 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %147, i32 0, i32 8
  store i8* %146, i8** %148, align 8
  br label %153

149:                                              ; preds = %136, %133
  %150 = call i8* @strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %151 = load %struct.vnstat*, %struct.vnstat** %6, align 8
  %152 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %151, i32 0, i32 8
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %149, %141
  %154 = load i8*, i8** %16, align 8
  %155 = load %struct.vnstat*, %struct.vnstat** %6, align 8
  %156 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %155, i32 0, i32 2
  store i8* %154, i8** %156, align 8
  %157 = load i32, i32* %18, align 4
  %158 = load i32, i32* @PS_FST_VTYPE_VBLK, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %173

160:                                              ; preds = %153
  %161 = load i8*, i8** %16, align 8
  %162 = load i32, i32* @S_IFBLK, align 4
  %163 = call i8* @devname(i8* %161, i32 %162)
  store i8* %163, i8** %11, align 8
  %164 = load i8*, i8** %11, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %172

166:                                              ; preds = %160
  %167 = load %struct.vnstat*, %struct.vnstat** %6, align 8
  %168 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 8
  %170 = load i8*, i8** %11, align 8
  %171 = call i32 @strlcpy(i32 %169, i8* %170, i32 4)
  br label %172

172:                                              ; preds = %166, %160
  br label %193

173:                                              ; preds = %153
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* @PS_FST_VTYPE_VCHR, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %192

177:                                              ; preds = %173
  %178 = load %struct.vnstat*, %struct.vnstat** %6, align 8
  %179 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %178, i32 0, i32 2
  %180 = load i8*, i8** %179, align 8
  %181 = load i32, i32* @S_IFCHR, align 4
  %182 = call i8* @devname(i8* %180, i32 %181)
  store i8* %182, i8** %11, align 8
  %183 = load i8*, i8** %11, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %191

185:                                              ; preds = %177
  %186 = load %struct.vnstat*, %struct.vnstat** %6, align 8
  %187 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 8
  %189 = load i8*, i8** %11, align 8
  %190 = call i32 @strlcpy(i32 %188, i8* %189, i32 4)
  br label %191

191:                                              ; preds = %185, %177
  br label %192

192:                                              ; preds = %191, %173
  br label %193

193:                                              ; preds = %192, %172
  %194 = load i8*, i8** %15, align 8
  %195 = load %struct.vnstat*, %struct.vnstat** %6, align 8
  %196 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %195, i32 0, i32 6
  store i8* %194, i8** %196, align 8
  %197 = load i8*, i8** %13, align 8
  %198 = load %struct.vnstat*, %struct.vnstat** %6, align 8
  %199 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %198, i32 0, i32 5
  store i8* %197, i8** %199, align 8
  %200 = load i8*, i8** %14, align 8
  %201 = load %struct.vnstat*, %struct.vnstat** %6, align 8
  %202 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %201, i32 0, i32 4
  store i8* %200, i8** %202, align 8
  %203 = load i32, i32* %17, align 4
  %204 = load %struct.vnstat*, %struct.vnstat** %6, align 8
  %205 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %204, i32 0, i32 3
  store i32 %203, i32* %205, align 8
  store i32 0, i32* %4, align 4
  br label %206

206:                                              ; preds = %193, %132, %119, %31
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local i32 @assert(%struct.vnstat*) #1

declare dso_local i32 @bzero(%struct.vnstat*, i32) #1

declare dso_local i32 @kinfo_vtype2fst(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @statfs(i8*, %struct.statfs*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @devname(i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
