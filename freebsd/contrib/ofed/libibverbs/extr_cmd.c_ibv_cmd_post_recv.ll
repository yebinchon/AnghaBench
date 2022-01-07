; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_post_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ibv_recv_wr = type { i32, %struct.ibv_recv_wr*, i32, i32 }
%struct.ibv_post_recv = type { i32, i32, i32, i32 }
%struct.ibv_post_recv_resp = type { i32 }
%struct.ibv_kern_recv_wr = type { i32, i32 }
%struct.ibv_sge = type { i32 }

@POST_RECV = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_post_recv(%struct.ibv_qp* %0, %struct.ibv_recv_wr* %1, %struct.ibv_recv_wr** %2) #0 {
  %4 = alloca %struct.ibv_qp*, align 8
  %5 = alloca %struct.ibv_recv_wr*, align 8
  %6 = alloca %struct.ibv_recv_wr**, align 8
  %7 = alloca %struct.ibv_post_recv*, align 8
  %8 = alloca %struct.ibv_post_recv_resp, align 4
  %9 = alloca %struct.ibv_recv_wr*, align 8
  %10 = alloca %struct.ibv_kern_recv_wr*, align 8
  %11 = alloca %struct.ibv_kern_recv_wr*, align 8
  %12 = alloca %struct.ibv_sge*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ibv_qp* %0, %struct.ibv_qp** %4, align 8
  store %struct.ibv_recv_wr* %1, %struct.ibv_recv_wr** %5, align 8
  store %struct.ibv_recv_wr** %2, %struct.ibv_recv_wr*** %6, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  store %struct.ibv_recv_wr* %17, %struct.ibv_recv_wr** %9, align 8
  br label %18

18:                                               ; preds = %29, %3
  %19 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %9, align 8
  %20 = icmp ne %struct.ibv_recv_wr* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load i32, i32* %13, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %13, align 4
  %24 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %9, align 8
  %25 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %14, align 4
  %28 = add i32 %27, %26
  store i32 %28, i32* %14, align 4
  br label %29

29:                                               ; preds = %21
  %30 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %9, align 8
  %31 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %30, i32 0, i32 1
  %32 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %31, align 8
  store %struct.ibv_recv_wr* %32, %struct.ibv_recv_wr** %9, align 8
  br label %18

33:                                               ; preds = %18
  %34 = load i32, i32* %13, align 4
  %35 = zext i32 %34 to i64
  %36 = mul i64 %35, 8
  %37 = add i64 16, %36
  %38 = load i32, i32* %14, align 4
  %39 = zext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = add i64 %37, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = call %struct.ibv_post_recv* @alloca(i32 %43)
  store %struct.ibv_post_recv* %44, %struct.ibv_post_recv** %7, align 8
  %45 = load %struct.ibv_post_recv*, %struct.ibv_post_recv** %7, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* @POST_RECV, align 4
  %48 = call i32 @IBV_INIT_CMD_RESP(%struct.ibv_post_recv* %45, i32 %46, i32 %47, %struct.ibv_post_recv_resp* %8, i32 4)
  %49 = load %struct.ibv_qp*, %struct.ibv_qp** %4, align 8
  %50 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ibv_post_recv*, %struct.ibv_post_recv** %7, align 8
  %53 = getelementptr inbounds %struct.ibv_post_recv, %struct.ibv_post_recv* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.ibv_post_recv*, %struct.ibv_post_recv** %7, align 8
  %56 = getelementptr inbounds %struct.ibv_post_recv, %struct.ibv_post_recv* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.ibv_post_recv*, %struct.ibv_post_recv** %7, align 8
  %59 = getelementptr inbounds %struct.ibv_post_recv, %struct.ibv_post_recv* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ibv_post_recv*, %struct.ibv_post_recv** %7, align 8
  %61 = getelementptr inbounds %struct.ibv_post_recv, %struct.ibv_post_recv* %60, i32 0, i32 2
  store i32 8, i32* %61, align 4
  %62 = load %struct.ibv_post_recv*, %struct.ibv_post_recv** %7, align 8
  %63 = bitcast %struct.ibv_post_recv* %62 to i8*
  %64 = getelementptr i8, i8* %63, i64 16
  %65 = bitcast i8* %64 to %struct.ibv_kern_recv_wr*
  store %struct.ibv_kern_recv_wr* %65, %struct.ibv_kern_recv_wr** %10, align 8
  %66 = load %struct.ibv_kern_recv_wr*, %struct.ibv_kern_recv_wr** %10, align 8
  %67 = load i32, i32* %13, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ibv_kern_recv_wr, %struct.ibv_kern_recv_wr* %66, i64 %68
  %70 = bitcast %struct.ibv_kern_recv_wr* %69 to %struct.ibv_sge*
  store %struct.ibv_sge* %70, %struct.ibv_sge** %12, align 8
  %71 = load %struct.ibv_kern_recv_wr*, %struct.ibv_kern_recv_wr** %10, align 8
  store %struct.ibv_kern_recv_wr* %71, %struct.ibv_kern_recv_wr** %11, align 8
  %72 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  store %struct.ibv_recv_wr* %72, %struct.ibv_recv_wr** %9, align 8
  br label %73

73:                                               ; preds = %112, %33
  %74 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %9, align 8
  %75 = icmp ne %struct.ibv_recv_wr* %74, null
  br i1 %75, label %76, label %116

76:                                               ; preds = %73
  %77 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %9, align 8
  %78 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ibv_kern_recv_wr*, %struct.ibv_kern_recv_wr** %11, align 8
  %81 = getelementptr inbounds %struct.ibv_kern_recv_wr, %struct.ibv_kern_recv_wr* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %9, align 8
  %83 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.ibv_kern_recv_wr*, %struct.ibv_kern_recv_wr** %11, align 8
  %86 = getelementptr inbounds %struct.ibv_kern_recv_wr, %struct.ibv_kern_recv_wr* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.ibv_kern_recv_wr*, %struct.ibv_kern_recv_wr** %11, align 8
  %88 = getelementptr inbounds %struct.ibv_kern_recv_wr, %struct.ibv_kern_recv_wr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %76
  %92 = load %struct.ibv_sge*, %struct.ibv_sge** %12, align 8
  %93 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %9, align 8
  %94 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ibv_kern_recv_wr*, %struct.ibv_kern_recv_wr** %11, align 8
  %97 = getelementptr inbounds %struct.ibv_kern_recv_wr, %struct.ibv_kern_recv_wr* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 4
  %101 = trunc i64 %100 to i32
  %102 = call i32 @memcpy(%struct.ibv_sge* %92, i32 %95, i32 %101)
  %103 = load %struct.ibv_kern_recv_wr*, %struct.ibv_kern_recv_wr** %11, align 8
  %104 = getelementptr inbounds %struct.ibv_kern_recv_wr, %struct.ibv_kern_recv_wr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ibv_sge*, %struct.ibv_sge** %12, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %106, i64 %107
  store %struct.ibv_sge* %108, %struct.ibv_sge** %12, align 8
  br label %109

109:                                              ; preds = %91, %76
  %110 = load %struct.ibv_kern_recv_wr*, %struct.ibv_kern_recv_wr** %11, align 8
  %111 = getelementptr inbounds %struct.ibv_kern_recv_wr, %struct.ibv_kern_recv_wr* %110, i32 1
  store %struct.ibv_kern_recv_wr* %111, %struct.ibv_kern_recv_wr** %11, align 8
  br label %112

112:                                              ; preds = %109
  %113 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %9, align 8
  %114 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %113, i32 0, i32 1
  %115 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %114, align 8
  store %struct.ibv_recv_wr* %115, %struct.ibv_recv_wr** %9, align 8
  br label %73

116:                                              ; preds = %73
  %117 = getelementptr inbounds %struct.ibv_post_recv_resp, %struct.ibv_post_recv_resp* %8, i32 0, i32 0
  store i32 0, i32* %117, align 4
  %118 = load %struct.ibv_qp*, %struct.ibv_qp** %4, align 8
  %119 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ibv_post_recv*, %struct.ibv_post_recv** %7, align 8
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @write(i32 %122, %struct.ibv_post_recv* %123, i32 %124)
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %116
  %129 = load i32, i32* @errno, align 4
  store i32 %129, i32* %16, align 4
  br label %130

130:                                              ; preds = %128, %116
  %131 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_post_recv_resp* %8, i32 4)
  %132 = getelementptr inbounds %struct.ibv_post_recv_resp, %struct.ibv_post_recv_resp* %8, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %130
  %137 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  store %struct.ibv_recv_wr* %137, %struct.ibv_recv_wr** %9, align 8
  br label %138

138:                                              ; preds = %142, %136
  %139 = load i32, i32* %13, align 4
  %140 = add i32 %139, -1
  store i32 %140, i32* %13, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %9, align 8
  %144 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %143, i32 0, i32 1
  %145 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %144, align 8
  store %struct.ibv_recv_wr* %145, %struct.ibv_recv_wr** %9, align 8
  br label %138

146:                                              ; preds = %138
  %147 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %9, align 8
  %148 = load %struct.ibv_recv_wr**, %struct.ibv_recv_wr*** %6, align 8
  store %struct.ibv_recv_wr* %147, %struct.ibv_recv_wr** %148, align 8
  br label %156

149:                                              ; preds = %130
  %150 = load i32, i32* %16, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %154 = load %struct.ibv_recv_wr**, %struct.ibv_recv_wr*** %6, align 8
  store %struct.ibv_recv_wr* %153, %struct.ibv_recv_wr** %154, align 8
  br label %155

155:                                              ; preds = %152, %149
  br label %156

156:                                              ; preds = %155, %146
  %157 = load i32, i32* %16, align 4
  ret i32 %157
}

declare dso_local %struct.ibv_post_recv* @alloca(i32) #1

declare dso_local i32 @IBV_INIT_CMD_RESP(%struct.ibv_post_recv*, i32, i32, %struct.ibv_post_recv_resp*, i32) #1

declare dso_local i32 @memcpy(%struct.ibv_sge*, i32, i32) #1

declare dso_local i32 @write(i32, %struct.ibv_post_recv*, i32) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_post_recv_resp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
