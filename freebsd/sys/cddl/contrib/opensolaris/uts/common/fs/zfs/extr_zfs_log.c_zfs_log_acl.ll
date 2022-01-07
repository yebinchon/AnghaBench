; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_log.c_zfs_log_acl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_log.c_zfs_log_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, i32, i8*, i8*, i32, i32 }

@ZPL_VERSION_FUID = common dso_local global i64 0, align 8
@TX_ACL_V0 = common dso_local global i32 0, align 4
@TX_ACL = common dso_local global i32 0, align 4
@VSA_ACE_ACLFLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_log_acl(i32* %0, i32* %1, %struct.TYPE_15__* %2, %struct.TYPE_17__* %3, %struct.TYPE_16__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %10, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %17, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @zil_replaying(i32* %22, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %5
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %5
  br label %207

32:                                               ; preds = %26
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ZPL_VERSION_FUID, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @TX_ACL_V0, align 4
  br label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @TX_ACL, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* @TX_ACL, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 40, i32* %15, align 4
  br label %51

50:                                               ; preds = %44
  store i32 4, i32* %15, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @TX_ACL, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i64, i64* %17, align 8
  %59 = call i64 @ZIL_ACE_LENGTH(i64 %58)
  br label %62

60:                                               ; preds = %51
  %61 = load i64, i64* %17, align 8
  br label %62

62:                                               ; preds = %60, %57
  %63 = phi i64 [ %59, %57 ], [ %61, %60 ]
  %64 = add i64 %53, %63
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %66 = icmp ne %struct.TYPE_16__* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  br label %72

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i32 [ %70, %67 ], [ 0, %71 ]
  %74 = sext i32 %73 to i64
  %75 = add i64 %64, %74
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %77 = icmp ne %struct.TYPE_16__* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  br label %83

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %78
  %84 = phi i32 [ %81, %78 ], [ 0, %82 ]
  %85 = sext i32 %84 to i64
  %86 = mul i64 8, %85
  %87 = add i64 %75, %86
  store i64 %87, i64* %16, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load i64, i64* %16, align 8
  %90 = call %struct.TYPE_19__* @zil_itx_create(i32 %88, i64 %89)
  store %struct.TYPE_19__* %90, %struct.TYPE_19__** %11, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 1
  %93 = bitcast i32* %92 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %93, %struct.TYPE_18__** %13, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @TX_ACL, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %146

102:                                              ; preds = %83
  %103 = load i64, i64* %17, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %107 = icmp ne %struct.TYPE_16__* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  br label %113

112:                                              ; preds = %102
  br label %113

113:                                              ; preds = %112, %108
  %114 = phi i32 [ %111, %108 ], [ 0, %112 ]
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %118 = icmp ne %struct.TYPE_16__* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  br label %124

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %123, %119
  %125 = phi i32 [ %122, %119 ], [ 0, %123 ]
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @VSA_ACE_ACLFLAGS, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %124
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  br label %145

142:                                              ; preds = %124
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 3
  store i8* null, i8** %144, align 8
  br label %145

145:                                              ; preds = %142, %134
  br label %146

146:                                              ; preds = %145, %83
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to i8*
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 2
  store i8* %151, i8** %153, align 8
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* @TX_ACL_V0, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %146
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %159 = bitcast %struct.TYPE_18__* %158 to i32*
  store i32* %159, i32** %12, align 8
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %12, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = bitcast i32* %164 to i8*
  %166 = load i64, i64* %17, align 8
  %167 = call i32 @bcopy(i32 %162, i8* %165, i64 %166)
  br label %195

168:                                              ; preds = %146
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i64 1
  %171 = bitcast %struct.TYPE_18__* %170 to i8*
  store i8* %171, i8** %18, align 8
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load i8*, i8** %18, align 8
  %176 = load i64, i64* %17, align 8
  %177 = call i32 @bcopy(i32 %174, i8* %175, i64 %176)
  %178 = load i8*, i8** %18, align 8
  %179 = ptrtoint i8* %178 to i32
  %180 = sext i32 %179 to i64
  %181 = load i64, i64* %17, align 8
  %182 = call i64 @ZIL_ACE_LENGTH(i64 %181)
  %183 = add i64 %180, %182
  %184 = inttoptr i64 %183 to i8*
  store i8* %184, i8** %18, align 8
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %186 = icmp ne %struct.TYPE_16__* %185, null
  br i1 %186, label %187, label %194

187:                                              ; preds = %168
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %189 = load i8*, i8** %18, align 8
  %190 = call i8* @zfs_log_fuid_ids(%struct.TYPE_16__* %188, i8* %189)
  store i8* %190, i8** %18, align 8
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %192 = load i8*, i8** %18, align 8
  %193 = call i32 @zfs_log_fuid_domains(%struct.TYPE_16__* %191, i8* %192)
  br label %194

194:                                              ; preds = %187, %168
  br label %195

195:                                              ; preds = %194, %157
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  %200 = zext i1 %199 to i32
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 4
  %203 = load i32*, i32** %6, align 8
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %205 = load i32*, i32** %7, align 8
  %206 = call i32 @zil_itx_assign(i32* %203, %struct.TYPE_19__* %204, i32* %205)
  br label %207

207:                                              ; preds = %195, %31
  ret void
}

declare dso_local i64 @zil_replaying(i32*, i32*) #1

declare dso_local i64 @ZIL_ACE_LENGTH(i64) #1

declare dso_local %struct.TYPE_19__* @zil_itx_create(i32, i64) #1

declare dso_local i32 @bcopy(i32, i8*, i64) #1

declare dso_local i8* @zfs_log_fuid_ids(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @zfs_log_fuid_domains(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @zil_itx_assign(i32*, %struct.TYPE_19__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
