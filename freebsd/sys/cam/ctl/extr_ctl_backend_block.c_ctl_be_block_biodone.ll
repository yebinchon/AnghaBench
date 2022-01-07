; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_biodone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_biodone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i64, %struct.ctl_be_block_io* }
%struct.ctl_be_block_io = type { i32, i64, i64, i64, i64, i64, i32*, i32, i32, i32, i32, %struct.ctl_be_block_lun*, %union.ctl_io* }
%struct.ctl_be_block_lun = type { i32, i32 }
%union.ctl_io = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"entered\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@BIO_FLUSH = common dso_local global i64 0, align 8
@BIO_READ = common dso_local global i64 0, align 8
@BIO_WRITE = common dso_local global i64 0, align 8
@BIO_DELETE = common dso_local global i64 0, align 8
@CTL_LLF_VERIFY = common dso_local global i32 0, align 4
@CTL_LLF_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @ctl_be_block_biodone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_be_block_biodone(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.ctl_be_block_io*, align 8
  %4 = alloca %struct.ctl_be_block_lun*, align 8
  %5 = alloca %union.ctl_io*, align 8
  %6 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %7 = load %struct.bio*, %struct.bio** %2, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 2
  %9 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %8, align 8
  store %struct.ctl_be_block_io* %9, %struct.ctl_be_block_io** %3, align 8
  %10 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %11 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %10, i32 0, i32 11
  %12 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %11, align 8
  store %struct.ctl_be_block_lun* %12, %struct.ctl_be_block_lun** %4, align 8
  %13 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %14 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %13, i32 0, i32 12
  %15 = load %union.ctl_io*, %union.ctl_io** %14, align 8
  store %union.ctl_io* %15, %union.ctl_io** %5, align 8
  %16 = call i32 @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.bio*, %struct.bio** %2, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %21 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %20, i32 0, i32 0
  %22 = call i32 @mtx_lock(i32* %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %1
  %26 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %27 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load %struct.bio*, %struct.bio** %2, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %35 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %30, %25
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %41 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.bio*, %struct.bio** %2, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %46 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %38, %30, %1
  %48 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %49 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.bio*, %struct.bio** %2, align 8
  %53 = call i32 @g_destroy_bio(%struct.bio* %52)
  %54 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %55 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %47
  %59 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %60 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %63 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %58, %47
  %67 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %68 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %67, i32 0, i32 0
  %69 = call i32 @mtx_unlock(i32* %68)
  br label %208

70:                                               ; preds = %58
  %71 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %72 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %71, i32 0, i32 11
  %73 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %72, align 8
  %74 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %77 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %80 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %83 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %86 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %85, i32 0, i32 7
  %87 = call i32 @devstat_end_transaction(i32 %75, i32 %78, i32 %81, i32 %84, i32* null, i32* %86)
  %88 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %89 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %88, i32 0, i32 0
  %90 = call i32 @mtx_unlock(i32* %89)
  %91 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %92 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %154

96:                                               ; preds = %70
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @EOPNOTSUPP, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %102 = bitcast %union.ctl_io* %101 to i32*
  %103 = call i32 @ctl_set_invalid_opcode(i32* %102)
  br label %151

104:                                              ; preds = %96
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @ENOSPC, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @EDQUOT, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %108, %104
  %113 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %114 = bitcast %union.ctl_io* %113 to i32*
  %115 = call i32 @ctl_set_space_alloc_fail(i32* %114)
  br label %150

116:                                              ; preds = %108
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @EROFS, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @EACCES, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %120, %116
  %125 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %126 = bitcast %union.ctl_io* %125 to i32*
  %127 = call i32 @ctl_set_hw_write_protected(i32* %126)
  br label %149

128:                                              ; preds = %120
  %129 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %130 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @BIO_FLUSH, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %136 = bitcast %union.ctl_io* %135 to i32*
  %137 = call i32 @ctl_set_internal_failure(i32* %136, i32 1, i32 47826)
  br label %148

138:                                              ; preds = %128
  %139 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %140 = bitcast %union.ctl_io* %139 to i32*
  %141 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %142 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @BIO_READ, align 8
  %145 = icmp eq i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @ctl_set_medium_error(i32* %140, i32 %146)
  br label %148

148:                                              ; preds = %138, %134
  br label %149

149:                                              ; preds = %148, %124
  br label %150

150:                                              ; preds = %149, %112
  br label %151

151:                                              ; preds = %150, %100
  %152 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %153 = call i32 @ctl_complete_beio(%struct.ctl_be_block_io* %152)
  br label %208

154:                                              ; preds = %70
  %155 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %156 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @BIO_WRITE, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %180, label %160

160:                                              ; preds = %154
  %161 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %162 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @BIO_FLUSH, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %180, label %166

166:                                              ; preds = %160
  %167 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %168 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %167, i32 0, i32 5
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @BIO_DELETE, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %180, label %172

172:                                              ; preds = %166
  %173 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %174 = call %struct.TYPE_4__* @ARGS(%union.ctl_io* %173)
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @CTL_LLF_VERIFY, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %172, %166, %160, %154
  %181 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %182 = bitcast %union.ctl_io* %181 to i32*
  %183 = call i32 @ctl_set_success(i32* %182)
  %184 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %185 = call i32 @ctl_complete_beio(%struct.ctl_be_block_io* %184)
  br label %208

186:                                              ; preds = %172
  %187 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %188 = call %struct.TYPE_4__* @ARGS(%union.ctl_io* %187)
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @CTL_LLF_READ, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %205

194:                                              ; preds = %186
  %195 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %196 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %195, i32 0, i32 6
  %197 = load i32*, i32** %196, align 8
  %198 = icmp eq i32* %197, null
  br i1 %198, label %199, label %205

199:                                              ; preds = %194
  %200 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %201 = bitcast %union.ctl_io* %200 to i32*
  %202 = call i32 @ctl_set_success(i32* %201)
  %203 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %204 = call i32 @ctl_serseq_done(%union.ctl_io* %203)
  br label %205

205:                                              ; preds = %199, %194, %186
  %206 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %207 = call i32 @ctl_datamove(%union.ctl_io* %206)
  br label %208

208:                                              ; preds = %66, %151, %205, %180
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @devstat_end_transaction(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ctl_set_invalid_opcode(i32*) #1

declare dso_local i32 @ctl_set_space_alloc_fail(i32*) #1

declare dso_local i32 @ctl_set_hw_write_protected(i32*) #1

declare dso_local i32 @ctl_set_internal_failure(i32*, i32, i32) #1

declare dso_local i32 @ctl_set_medium_error(i32*, i32) #1

declare dso_local i32 @ctl_complete_beio(%struct.ctl_be_block_io*) #1

declare dso_local %struct.TYPE_4__* @ARGS(%union.ctl_io*) #1

declare dso_local i32 @ctl_set_success(i32*) #1

declare dso_local i32 @ctl_serseq_done(%union.ctl_io*) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
