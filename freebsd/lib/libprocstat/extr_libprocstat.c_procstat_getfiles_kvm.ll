; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getfiles_kvm.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getfiles_kvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filestat_list = type { i32 }
%struct.procstat = type { i32* }
%struct.kinfo_proc = type { i8*, i8*, %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.file = type { i8*, i8*, i8*, i32, i32, i32, i64, i32, i8*, i32*, %struct.TYPE_9__, i32*, %struct.TYPE_10__, i32, i8*, i8*, i64 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.filedesc = type { i8*, i8*, i8*, i32, i32, i32, i64, i32, i8*, i32*, %struct.TYPE_9__, i32*, %struct.TYPE_10__, i32, i8*, i8*, i64 }
%struct.vm_map_entry = type { i8*, i8*, i8*, i32, i32, i32, i64, i32, i8*, i32*, %struct.TYPE_9__, i32*, %struct.TYPE_10__, i32, i8*, i8*, i64 }
%struct.vm_object = type { i8*, i8*, i8*, i32, i32, i32, i64, i32, i8*, i32*, %struct.TYPE_9__, i32*, %struct.TYPE_10__, i32, i8*, i8*, i64 }
%struct.vmspace = type { i8*, i8*, i8*, i32, i32, i32, i64, i32, i8*, i32*, %struct.TYPE_9__, i32*, %struct.TYPE_10__, i32, i8*, i8*, i64 }
%struct.vnode = type opaque
%struct.filestat = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"can't read filedesc at %p\00", align 1
@PS_FST_TYPE_VNODE = common dso_local global i32 0, align 4
@PS_FST_FFLAG_READ = common dso_local global i32 0, align 4
@PS_FST_UFLAG_RDIR = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@PS_FST_UFLAG_CDIR = common dso_local global i32 0, align 4
@PS_FST_UFLAG_JAIL = common dso_local global i32 0, align 4
@PS_FST_FFLAG_WRITE = common dso_local global i32 0, align 4
@PS_FST_UFLAG_TRACE = common dso_local global i32 0, align 4
@PS_FST_UFLAG_TEXT = common dso_local global i32 0, align 4
@PS_FST_UFLAG_CTTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"malloc(%zu)\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"cannot read file structures at %p\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"can't read file %d at %p\00", align 1
@PS_FST_TYPE_SOCKET = common dso_local global i32 0, align 4
@PS_FST_TYPE_PIPE = common dso_local global i32 0, align 4
@PS_FST_TYPE_FIFO = common dso_local global i32 0, align 4
@PS_FST_TYPE_PTS = common dso_local global i32 0, align 4
@PS_FST_TYPE_SEM = common dso_local global i32 0, align 4
@PS_FST_TYPE_SHM = common dso_local global i32 0, align 4
@PS_FST_TYPE_PROCDESC = common dso_local global i32 0, align 4
@PS_FST_TYPE_DEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"can't read vmspace at %p\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"can't read vm_map_entry at %p\00", align 1
@MAP_ENTRY_IS_SUB_MAP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"can't read vm_object at %p\00", align 1
@OBJT_VNODE = common dso_local global i64 0, align 8
@VM_PROT_READ = common dso_local global i32 0, align 4
@MAP_ENTRY_COW = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@PS_FST_UFLAG_MMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.filestat_list* (%struct.procstat*, %struct.kinfo_proc*, i32)* @procstat_getfiles_kvm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.filestat_list* @procstat_getfiles_kvm(%struct.procstat* %0, %struct.kinfo_proc* %1, i32 %2) #0 {
  %4 = alloca %struct.filestat_list*, align 8
  %5 = alloca %struct.procstat*, align 8
  %6 = alloca %struct.kinfo_proc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file, align 8
  %9 = alloca %struct.filedesc, align 8
  %10 = alloca %struct.vm_map_entry, align 8
  %11 = alloca %struct.vm_object, align 8
  %12 = alloca %struct.vmspace, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.vnode*, align 8
  %17 = alloca %struct.file**, align 8
  %18 = alloca %struct.filestat*, align 8
  %19 = alloca %struct.filestat_list*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.procstat* %0, %struct.procstat** %5, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %6, align 8
  store i32 %2, i32* %7, align 4
  %27 = load %struct.procstat*, %struct.procstat** %5, align 8
  %28 = call i32 @assert(%struct.procstat* %27)
  %29 = load %struct.procstat*, %struct.procstat** %5, align 8
  %30 = getelementptr inbounds %struct.procstat, %struct.procstat* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %20, align 8
  %32 = load i32*, i32** %20, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  store %struct.filestat_list* null, %struct.filestat_list** %4, align 8
  br label %445

35:                                               ; preds = %3
  %36 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %37 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store %struct.filestat_list* null, %struct.filestat_list** %4, align 8
  br label %445

41:                                               ; preds = %35
  %42 = load i32*, i32** %20, align 8
  %43 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %44 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = ptrtoint i32* %45 to i64
  %47 = call i32 (i32*, i64, ...) @kvm_read_all(i32* %42, i64 %46, %struct.filedesc* %9, i64 128)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %41
  %50 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %51 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = bitcast i32* %52 to i8*
  %54 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %53)
  store %struct.filestat_list* null, %struct.filestat_list** %4, align 8
  br label %445

55:                                               ; preds = %41
  %56 = call i8* @malloc(i32 4)
  %57 = bitcast i8* %56 to %struct.filestat_list*
  store %struct.filestat_list* %57, %struct.filestat_list** %19, align 8
  %58 = load %struct.filestat_list*, %struct.filestat_list** %19, align 8
  %59 = icmp eq %struct.filestat_list* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store %struct.filestat_list* null, %struct.filestat_list** %4, align 8
  br label %445

61:                                               ; preds = %55
  %62 = load %struct.filestat_list*, %struct.filestat_list** %19, align 8
  %63 = call i32 @STAILQ_INIT(%struct.filestat_list* %62)
  %64 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %9, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %82

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %9, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* @PS_FST_TYPE_VNODE, align 4
  %71 = load i32, i32* @PS_FST_FFLAG_READ, align 4
  %72 = load i32, i32* @PS_FST_UFLAG_RDIR, align 4
  %73 = call %struct.filestat* @filestat_new_entry(i8* %69, i32 %70, i32 -1, i32 %71, i32 %72, i32 0, i32 0, i32* null, i32* null)
  store %struct.filestat* %73, %struct.filestat** %18, align 8
  %74 = load %struct.filestat*, %struct.filestat** %18, align 8
  %75 = icmp ne %struct.filestat* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %67
  %77 = load %struct.filestat_list*, %struct.filestat_list** %19, align 8
  %78 = load %struct.filestat*, %struct.filestat** %18, align 8
  %79 = load i32, i32* @next, align 4
  %80 = call i32 @STAILQ_INSERT_TAIL(%struct.filestat_list* %77, %struct.filestat* %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %67
  br label %82

82:                                               ; preds = %81, %61
  %83 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %9, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %101

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %9, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* @PS_FST_TYPE_VNODE, align 4
  %90 = load i32, i32* @PS_FST_FFLAG_READ, align 4
  %91 = load i32, i32* @PS_FST_UFLAG_CDIR, align 4
  %92 = call %struct.filestat* @filestat_new_entry(i8* %88, i32 %89, i32 -1, i32 %90, i32 %91, i32 0, i32 0, i32* null, i32* null)
  store %struct.filestat* %92, %struct.filestat** %18, align 8
  %93 = load %struct.filestat*, %struct.filestat** %18, align 8
  %94 = icmp ne %struct.filestat* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %86
  %96 = load %struct.filestat_list*, %struct.filestat_list** %19, align 8
  %97 = load %struct.filestat*, %struct.filestat** %18, align 8
  %98 = load i32, i32* @next, align 4
  %99 = call i32 @STAILQ_INSERT_TAIL(%struct.filestat_list* %96, %struct.filestat* %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %86
  br label %101

101:                                              ; preds = %100, %82
  %102 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %9, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %120

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %9, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* @PS_FST_TYPE_VNODE, align 4
  %109 = load i32, i32* @PS_FST_FFLAG_READ, align 4
  %110 = load i32, i32* @PS_FST_UFLAG_JAIL, align 4
  %111 = call %struct.filestat* @filestat_new_entry(i8* %107, i32 %108, i32 -1, i32 %109, i32 %110, i32 0, i32 0, i32* null, i32* null)
  store %struct.filestat* %111, %struct.filestat** %18, align 8
  %112 = load %struct.filestat*, %struct.filestat** %18, align 8
  %113 = icmp ne %struct.filestat* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %105
  %115 = load %struct.filestat_list*, %struct.filestat_list** %19, align 8
  %116 = load %struct.filestat*, %struct.filestat** %18, align 8
  %117 = load i32, i32* @next, align 4
  %118 = call i32 @STAILQ_INSERT_TAIL(%struct.filestat_list* %115, %struct.filestat* %116, i32 %117)
  br label %119

119:                                              ; preds = %114, %105
  br label %120

120:                                              ; preds = %119, %101
  %121 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %122 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %143

125:                                              ; preds = %120
  %126 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %127 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* @PS_FST_TYPE_VNODE, align 4
  %130 = load i32, i32* @PS_FST_FFLAG_READ, align 4
  %131 = load i32, i32* @PS_FST_FFLAG_WRITE, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @PS_FST_UFLAG_TRACE, align 4
  %134 = call %struct.filestat* @filestat_new_entry(i8* %128, i32 %129, i32 -1, i32 %132, i32 %133, i32 0, i32 0, i32* null, i32* null)
  store %struct.filestat* %134, %struct.filestat** %18, align 8
  %135 = load %struct.filestat*, %struct.filestat** %18, align 8
  %136 = icmp ne %struct.filestat* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %125
  %138 = load %struct.filestat_list*, %struct.filestat_list** %19, align 8
  %139 = load %struct.filestat*, %struct.filestat** %18, align 8
  %140 = load i32, i32* @next, align 4
  %141 = call i32 @STAILQ_INSERT_TAIL(%struct.filestat_list* %138, %struct.filestat* %139, i32 %140)
  br label %142

142:                                              ; preds = %137, %125
  br label %143

143:                                              ; preds = %142, %120
  %144 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %145 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %164

148:                                              ; preds = %143
  %149 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %150 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = load i32, i32* @PS_FST_TYPE_VNODE, align 4
  %153 = load i32, i32* @PS_FST_FFLAG_READ, align 4
  %154 = load i32, i32* @PS_FST_UFLAG_TEXT, align 4
  %155 = call %struct.filestat* @filestat_new_entry(i8* %151, i32 %152, i32 -1, i32 %153, i32 %154, i32 0, i32 0, i32* null, i32* null)
  store %struct.filestat* %155, %struct.filestat** %18, align 8
  %156 = load %struct.filestat*, %struct.filestat** %18, align 8
  %157 = icmp ne %struct.filestat* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %148
  %159 = load %struct.filestat_list*, %struct.filestat_list** %19, align 8
  %160 = load %struct.filestat*, %struct.filestat** %18, align 8
  %161 = load i32, i32* @next, align 4
  %162 = call i32 @STAILQ_INSERT_TAIL(%struct.filestat_list* %159, %struct.filestat* %160, i32 %161)
  br label %163

163:                                              ; preds = %158, %148
  br label %164

164:                                              ; preds = %163, %143
  %165 = load i32*, i32** %20, align 8
  %166 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %167 = call i8* @getctty(i32* %165, %struct.kinfo_proc* %166)
  %168 = bitcast i8* %167 to %struct.vnode*
  store %struct.vnode* %168, %struct.vnode** %16, align 8
  %169 = icmp ne %struct.vnode* %168, null
  br i1 %169, label %170, label %187

170:                                              ; preds = %164
  %171 = load %struct.vnode*, %struct.vnode** %16, align 8
  %172 = bitcast %struct.vnode* %171 to i8*
  %173 = load i32, i32* @PS_FST_TYPE_VNODE, align 4
  %174 = load i32, i32* @PS_FST_FFLAG_READ, align 4
  %175 = load i32, i32* @PS_FST_FFLAG_WRITE, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @PS_FST_UFLAG_CTTY, align 4
  %178 = call %struct.filestat* @filestat_new_entry(i8* %172, i32 %173, i32 -1, i32 %176, i32 %177, i32 0, i32 0, i32* null, i32* null)
  store %struct.filestat* %178, %struct.filestat** %18, align 8
  %179 = load %struct.filestat*, %struct.filestat** %18, align 8
  %180 = icmp ne %struct.filestat* %179, null
  br i1 %180, label %181, label %186

181:                                              ; preds = %170
  %182 = load %struct.filestat_list*, %struct.filestat_list** %19, align 8
  %183 = load %struct.filestat*, %struct.filestat** %18, align 8
  %184 = load i32, i32* @next, align 4
  %185 = call i32 @STAILQ_INSERT_TAIL(%struct.filestat_list* %182, %struct.filestat* %183, i32 %184)
  br label %186

186:                                              ; preds = %181, %170
  br label %187

187:                                              ; preds = %186, %164
  %188 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %9, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %26, align 4
  %191 = load i32, i32* %26, align 4
  %192 = zext i32 %191 to i64
  %193 = mul i64 %192, 8
  %194 = trunc i64 %193 to i32
  %195 = call i8* @malloc(i32 %194)
  %196 = bitcast i8* %195 to %struct.file**
  store %struct.file** %196, %struct.file*** %17, align 8
  %197 = load %struct.file**, %struct.file*** %17, align 8
  %198 = icmp eq %struct.file** %197, null
  br i1 %198, label %199, label %205

199:                                              ; preds = %187
  %200 = load i32, i32* %26, align 4
  %201 = zext i32 %200 to i64
  %202 = mul i64 %201, 8
  %203 = trunc i64 %202 to i32
  %204 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %203)
  br label %321

205:                                              ; preds = %187
  %206 = load i32*, i32** %20, align 8
  %207 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %9, i32 0, i32 16
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.file**, %struct.file*** %17, align 8
  %210 = load i32, i32* %26, align 4
  %211 = zext i32 %210 to i64
  %212 = mul i64 %211, 8
  %213 = call i32 (i32*, i64, ...) @kvm_read_all(i32* %206, i64 %208, %struct.file** %209, i64 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %223, label %215

215:                                              ; preds = %205
  %216 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %9, i32 0, i32 16
  %217 = load i64, i64* %216, align 8
  %218 = inttoptr i64 %217 to i8*
  %219 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %218)
  %220 = load %struct.file**, %struct.file*** %17, align 8
  %221 = bitcast %struct.file** %220 to %struct.vmspace**
  %222 = call i32 @free(%struct.vmspace** %221)
  br label %321

223:                                              ; preds = %205
  store i32 0, i32* %22, align 4
  br label %224

224:                                              ; preds = %314, %223
  %225 = load i32, i32* %22, align 4
  %226 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %9, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = icmp sle i32 %225, %227
  br i1 %228, label %229, label %317

229:                                              ; preds = %224
  %230 = load %struct.file**, %struct.file*** %17, align 8
  %231 = load i32, i32* %22, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.file*, %struct.file** %230, i64 %232
  %234 = load %struct.file*, %struct.file** %233, align 8
  %235 = icmp eq %struct.file* %234, null
  br i1 %235, label %236, label %237

236:                                              ; preds = %229
  br label %314

237:                                              ; preds = %229
  %238 = load i32*, i32** %20, align 8
  %239 = load %struct.file**, %struct.file*** %17, align 8
  %240 = load i32, i32* %22, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.file*, %struct.file** %239, i64 %241
  %243 = load %struct.file*, %struct.file** %242, align 8
  %244 = ptrtoint %struct.file* %243 to i64
  %245 = call i32 (i32*, i64, ...) @kvm_read_all(i32* %238, i64 %244, %struct.file* %8, i64 128)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %258, label %247

247:                                              ; preds = %237
  %248 = load i32, i32* %22, align 4
  %249 = sext i32 %248 to i64
  %250 = inttoptr i64 %249 to i8*
  %251 = load %struct.file**, %struct.file*** %17, align 8
  %252 = load i32, i32* %22, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.file*, %struct.file** %251, i64 %253
  %255 = load %struct.file*, %struct.file** %254, align 8
  %256 = bitcast %struct.file* %255 to i8*
  %257 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %250, i8* %256)
  br label %314

258:                                              ; preds = %237
  %259 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 4
  %260 = load i32, i32* %259, align 4
  switch i32 %260, label %297 [
    i32 128, label %261
    i32 129, label %265
    i32 134, label %269
    i32 135, label %273
    i32 132, label %277
    i32 131, label %281
    i32 130, label %285
    i32 133, label %289
    i32 136, label %293
  ]

261:                                              ; preds = %258
  %262 = load i32, i32* @PS_FST_TYPE_VNODE, align 4
  store i32 %262, i32* %25, align 4
  %263 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 15
  %264 = load i8*, i8** %263, align 8
  store i8* %264, i8** %21, align 8
  br label %298

265:                                              ; preds = %258
  %266 = load i32, i32* @PS_FST_TYPE_SOCKET, align 4
  store i32 %266, i32* %25, align 4
  %267 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 14
  %268 = load i8*, i8** %267, align 8
  store i8* %268, i8** %21, align 8
  br label %298

269:                                              ; preds = %258
  %270 = load i32, i32* @PS_FST_TYPE_PIPE, align 4
  store i32 %270, i32* %25, align 4
  %271 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 14
  %272 = load i8*, i8** %271, align 8
  store i8* %272, i8** %21, align 8
  br label %298

273:                                              ; preds = %258
  %274 = load i32, i32* @PS_FST_TYPE_FIFO, align 4
  store i32 %274, i32* %25, align 4
  %275 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 15
  %276 = load i8*, i8** %275, align 8
  store i8* %276, i8** %21, align 8
  br label %298

277:                                              ; preds = %258
  %278 = load i32, i32* @PS_FST_TYPE_PTS, align 4
  store i32 %278, i32* %25, align 4
  %279 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 14
  %280 = load i8*, i8** %279, align 8
  store i8* %280, i8** %21, align 8
  br label %298

281:                                              ; preds = %258
  %282 = load i32, i32* @PS_FST_TYPE_SEM, align 4
  store i32 %282, i32* %25, align 4
  %283 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 14
  %284 = load i8*, i8** %283, align 8
  store i8* %284, i8** %21, align 8
  br label %298

285:                                              ; preds = %258
  %286 = load i32, i32* @PS_FST_TYPE_SHM, align 4
  store i32 %286, i32* %25, align 4
  %287 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 14
  %288 = load i8*, i8** %287, align 8
  store i8* %288, i8** %21, align 8
  br label %298

289:                                              ; preds = %258
  %290 = load i32, i32* @PS_FST_TYPE_PROCDESC, align 4
  store i32 %290, i32* %25, align 4
  %291 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 14
  %292 = load i8*, i8** %291, align 8
  store i8* %292, i8** %21, align 8
  br label %298

293:                                              ; preds = %258
  %294 = load i32, i32* @PS_FST_TYPE_DEV, align 4
  store i32 %294, i32* %25, align 4
  %295 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 14
  %296 = load i8*, i8** %295, align 8
  store i8* %296, i8** %21, align 8
  br label %298

297:                                              ; preds = %258
  br label %314

298:                                              ; preds = %293, %289, %285, %281, %277, %273, %269, %265, %261
  %299 = load i8*, i8** %21, align 8
  %300 = load i32, i32* %25, align 4
  %301 = load i32, i32* %22, align 4
  %302 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 13
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @to_filestat_flags(i32 %303)
  %305 = call %struct.filestat* @filestat_new_entry(i8* %299, i32 %300, i32 %301, i32 %304, i32 0, i32 0, i32 0, i32* null, i32* null)
  store %struct.filestat* %305, %struct.filestat** %18, align 8
  %306 = load %struct.filestat*, %struct.filestat** %18, align 8
  %307 = icmp ne %struct.filestat* %306, null
  br i1 %307, label %308, label %313

308:                                              ; preds = %298
  %309 = load %struct.filestat_list*, %struct.filestat_list** %19, align 8
  %310 = load %struct.filestat*, %struct.filestat** %18, align 8
  %311 = load i32, i32* @next, align 4
  %312 = call i32 @STAILQ_INSERT_TAIL(%struct.filestat_list* %309, %struct.filestat* %310, i32 %311)
  br label %313

313:                                              ; preds = %308, %298
  br label %314

314:                                              ; preds = %313, %297, %247, %236
  %315 = load i32, i32* %22, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %22, align 4
  br label %224

317:                                              ; preds = %224
  %318 = load %struct.file**, %struct.file*** %17, align 8
  %319 = bitcast %struct.file** %318 to %struct.vmspace**
  %320 = call i32 @free(%struct.vmspace** %319)
  br label %321

321:                                              ; preds = %317, %215, %199
  %322 = load i32, i32* %7, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %442

324:                                              ; preds = %321
  %325 = load i32*, i32** %20, align 8
  %326 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %327 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %326, i32 0, i32 2
  %328 = load %struct.TYPE_8__*, %struct.TYPE_8__** %327, align 8
  %329 = ptrtoint %struct.TYPE_8__* %328 to i64
  %330 = call i32 (i32*, i64, ...) @kvm_read_all(i32* %325, i64 %329, %struct.vmspace* %12, i64 128)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %338, label %332

332:                                              ; preds = %324
  %333 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %334 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %333, i32 0, i32 2
  %335 = load %struct.TYPE_8__*, %struct.TYPE_8__** %334, align 8
  %336 = bitcast %struct.TYPE_8__* %335 to i8*
  %337 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %336)
  br label %443

338:                                              ; preds = %324
  %339 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %12, i32 0, i32 12
  store %struct.TYPE_10__* %339, %struct.TYPE_10__** %14, align 8
  %340 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 0
  %343 = load i32*, i32** %342, align 8
  store i32* %343, i32** %13, align 8
  br label %344

344:                                              ; preds = %438, %338
  %345 = load i32*, i32** %13, align 8
  %346 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %347 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %346, i32 0, i32 2
  %348 = load %struct.TYPE_8__*, %struct.TYPE_8__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 0
  %351 = icmp ne i32* %345, %350
  br i1 %351, label %352, label %441

352:                                              ; preds = %344
  %353 = load i32*, i32** %20, align 8
  %354 = load i32*, i32** %13, align 8
  %355 = ptrtoint i32* %354 to i64
  %356 = call i32 (i32*, i64, ...) @kvm_read_all(i32* %353, i64 %355, %struct.vm_map_entry* %10, i64 128)
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %362, label %358

358:                                              ; preds = %352
  %359 = load i32*, i32** %13, align 8
  %360 = bitcast i32* %359 to i8*
  %361 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %360)
  br label %438

362:                                              ; preds = %352
  %363 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %10, i32 0, i32 5
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @MAP_ENTRY_IS_SUB_MAP, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %362
  br label %438

369:                                              ; preds = %362
  %370 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %10, i32 0, i32 10
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 0
  %372 = load i32*, i32** %371, align 8
  store i32* %372, i32** %15, align 8
  %373 = icmp eq i32* %372, null
  br i1 %373, label %374, label %375

374:                                              ; preds = %369
  br label %438

375:                                              ; preds = %369
  br label %376

376:                                              ; preds = %390, %375
  %377 = load i32*, i32** %15, align 8
  %378 = icmp ne i32* %377, null
  br i1 %378, label %379, label %393

379:                                              ; preds = %376
  %380 = load i32*, i32** %20, align 8
  %381 = load i32*, i32** %15, align 8
  %382 = ptrtoint i32* %381 to i64
  %383 = call i32 (i32*, i64, ...) @kvm_read_all(i32* %380, i64 %382, %struct.vm_object* %11, i64 128)
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %389, label %385

385:                                              ; preds = %379
  %386 = load i32*, i32** %15, align 8
  %387 = bitcast i32* %386 to i8*
  %388 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %387)
  br label %393

389:                                              ; preds = %379
  br label %390

390:                                              ; preds = %389
  %391 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %11, i32 0, i32 9
  %392 = load i32*, i32** %391, align 8
  store i32* %392, i32** %15, align 8
  br label %376

393:                                              ; preds = %385, %376
  %394 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %11, i32 0, i32 6
  %395 = load i64, i64* %394, align 8
  %396 = load i64, i64* @OBJT_VNODE, align 8
  %397 = icmp ne i64 %395, %396
  br i1 %397, label %398, label %399

398:                                              ; preds = %393
  br label %438

399:                                              ; preds = %393
  %400 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %10, i32 0, i32 7
  %401 = load i32, i32* %400, align 8
  store i32 %401, i32* %24, align 4
  store i32 0, i32* %23, align 4
  %402 = load i32, i32* %24, align 4
  %403 = load i32, i32* @VM_PROT_READ, align 4
  %404 = and i32 %402, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %408

406:                                              ; preds = %399
  %407 = load i32, i32* @PS_FST_FFLAG_READ, align 4
  store i32 %407, i32* %23, align 4
  br label %408

408:                                              ; preds = %406, %399
  %409 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %10, i32 0, i32 5
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @MAP_ENTRY_COW, align 4
  %412 = and i32 %410, %411
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %423

414:                                              ; preds = %408
  %415 = load i32, i32* %24, align 4
  %416 = load i32, i32* @VM_PROT_WRITE, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %423

419:                                              ; preds = %414
  %420 = load i32, i32* @PS_FST_FFLAG_WRITE, align 4
  %421 = load i32, i32* %23, align 4
  %422 = or i32 %421, %420
  store i32 %422, i32* %23, align 4
  br label %423

423:                                              ; preds = %419, %414, %408
  %424 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %11, i32 0, i32 8
  %425 = load i8*, i8** %424, align 8
  %426 = load i32, i32* @PS_FST_TYPE_VNODE, align 4
  %427 = load i32, i32* %23, align 4
  %428 = load i32, i32* @PS_FST_UFLAG_MMAP, align 4
  %429 = call %struct.filestat* @filestat_new_entry(i8* %425, i32 %426, i32 -1, i32 %427, i32 %428, i32 0, i32 0, i32* null, i32* null)
  store %struct.filestat* %429, %struct.filestat** %18, align 8
  %430 = load %struct.filestat*, %struct.filestat** %18, align 8
  %431 = icmp ne %struct.filestat* %430, null
  br i1 %431, label %432, label %437

432:                                              ; preds = %423
  %433 = load %struct.filestat_list*, %struct.filestat_list** %19, align 8
  %434 = load %struct.filestat*, %struct.filestat** %18, align 8
  %435 = load i32, i32* @next, align 4
  %436 = call i32 @STAILQ_INSERT_TAIL(%struct.filestat_list* %433, %struct.filestat* %434, i32 %435)
  br label %437

437:                                              ; preds = %432, %423
  br label %438

438:                                              ; preds = %437, %398, %374, %368, %358
  %439 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %10, i32 0, i32 11
  %440 = load i32*, i32** %439, align 8
  store i32* %440, i32** %13, align 8
  br label %344

441:                                              ; preds = %344
  br label %442

442:                                              ; preds = %441, %321
  br label %443

443:                                              ; preds = %442, %332
  %444 = load %struct.filestat_list*, %struct.filestat_list** %19, align 8
  store %struct.filestat_list* %444, %struct.filestat_list** %4, align 8
  br label %445

445:                                              ; preds = %443, %60, %49, %40, %34
  %446 = load %struct.filestat_list*, %struct.filestat_list** %4, align 8
  ret %struct.filestat_list* %446
}

declare dso_local i32 @assert(%struct.procstat*) #1

declare dso_local i32 @kvm_read_all(i32*, i64, ...) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @STAILQ_INIT(%struct.filestat_list*) #1

declare dso_local %struct.filestat* @filestat_new_entry(i8*, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(%struct.filestat_list*, %struct.filestat*, i32) #1

declare dso_local i8* @getctty(i32*, %struct.kinfo_proc*) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @free(%struct.vmspace**) #1

declare dso_local i32 @to_filestat_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
