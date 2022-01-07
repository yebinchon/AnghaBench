; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_daemon.c_daemon_open_shared_ports.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_daemon.c_daemon_open_shared_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daemon = type { i64, i32, i64, i64, %struct.TYPE_3__*, %struct.listen_port*, %struct.listen_port** }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }
%struct.listen_port = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @daemon_open_shared_ports(%struct.daemon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.daemon*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.listen_port*, align 8
  store %struct.daemon* %0, %struct.daemon** %3, align 8
  %6 = load %struct.daemon*, %struct.daemon** %3, align 8
  %7 = call i32 @log_assert(%struct.daemon* %6)
  %8 = load %struct.daemon*, %struct.daemon** %3, align 8
  %9 = getelementptr inbounds %struct.daemon, %struct.daemon* %8, i32 0, i32 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.daemon*, %struct.daemon** %3, align 8
  %14 = getelementptr inbounds %struct.daemon, %struct.daemon* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %165

17:                                               ; preds = %1
  %18 = load %struct.daemon*, %struct.daemon** %3, align 8
  %19 = getelementptr inbounds %struct.daemon, %struct.daemon* %18, i32 0, i32 1
  store i32 0, i32* %19, align 8
  %20 = load %struct.daemon*, %struct.daemon** %3, align 8
  %21 = getelementptr inbounds %struct.daemon, %struct.daemon* %20, i32 0, i32 6
  %22 = load %struct.listen_port**, %struct.listen_port*** %21, align 8
  %23 = icmp ne %struct.listen_port** %22, null
  br i1 %23, label %24, label %49

24:                                               ; preds = %17
  store i64 0, i64* %4, align 8
  br label %25

25:                                               ; preds = %39, %24
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.daemon*, %struct.daemon** %3, align 8
  %28 = getelementptr inbounds %struct.daemon, %struct.daemon* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.daemon*, %struct.daemon** %3, align 8
  %33 = getelementptr inbounds %struct.daemon, %struct.daemon* %32, i32 0, i32 6
  %34 = load %struct.listen_port**, %struct.listen_port*** %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds %struct.listen_port*, %struct.listen_port** %34, i64 %35
  %37 = load %struct.listen_port*, %struct.listen_port** %36, align 8
  %38 = call i32 @listening_ports_free(%struct.listen_port* %37)
  br label %39

39:                                               ; preds = %31
  %40 = load i64, i64* %4, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %4, align 8
  br label %25

42:                                               ; preds = %25
  %43 = load %struct.daemon*, %struct.daemon** %3, align 8
  %44 = getelementptr inbounds %struct.daemon, %struct.daemon* %43, i32 0, i32 6
  %45 = load %struct.listen_port**, %struct.listen_port*** %44, align 8
  %46 = call i32 @free(%struct.listen_port** %45)
  %47 = load %struct.daemon*, %struct.daemon** %3, align 8
  %48 = getelementptr inbounds %struct.daemon, %struct.daemon* %47, i32 0, i32 6
  store %struct.listen_port** null, %struct.listen_port*** %48, align 8
  br label %49

49:                                               ; preds = %42, %17
  %50 = load %struct.daemon*, %struct.daemon** %3, align 8
  %51 = getelementptr inbounds %struct.daemon, %struct.daemon* %50, i32 0, i32 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load %struct.daemon*, %struct.daemon** %3, align 8
  %54 = getelementptr inbounds %struct.daemon, %struct.daemon* %53, i32 0, i32 1
  %55 = call i8* @listening_ports_open(%struct.TYPE_3__* %52, i32* %54)
  %56 = bitcast i8* %55 to %struct.listen_port*
  store %struct.listen_port* %56, %struct.listen_port** %5, align 8
  %57 = load %struct.listen_port*, %struct.listen_port** %5, align 8
  %58 = icmp ne %struct.listen_port* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = load %struct.listen_port*, %struct.listen_port** %5, align 8
  %61 = call i32 @listening_ports_free(%struct.listen_port* %60)
  store i32 0, i32* %2, align 4
  br label %225

62:                                               ; preds = %49
  %63 = load %struct.daemon*, %struct.daemon** %3, align 8
  %64 = getelementptr inbounds %struct.daemon, %struct.daemon* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.daemon*, %struct.daemon** %3, align 8
  %69 = getelementptr inbounds %struct.daemon, %struct.daemon* %68, i32 0, i32 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.daemon*, %struct.daemon** %3, align 8
  %74 = getelementptr inbounds %struct.daemon, %struct.daemon* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  br label %78

75:                                               ; preds = %62
  %76 = load %struct.daemon*, %struct.daemon** %3, align 8
  %77 = getelementptr inbounds %struct.daemon, %struct.daemon* %76, i32 0, i32 2
  store i64 1, i64* %77, align 8
  br label %78

78:                                               ; preds = %75, %67
  %79 = load %struct.daemon*, %struct.daemon** %3, align 8
  %80 = getelementptr inbounds %struct.daemon, %struct.daemon* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i64 @calloc(i32 %82, i32 8)
  %84 = inttoptr i64 %83 to %struct.listen_port**
  %85 = load %struct.daemon*, %struct.daemon** %3, align 8
  %86 = getelementptr inbounds %struct.daemon, %struct.daemon* %85, i32 0, i32 6
  store %struct.listen_port** %84, %struct.listen_port*** %86, align 8
  %87 = icmp ne %struct.listen_port** %84, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %78
  %89 = load %struct.listen_port*, %struct.listen_port** %5, align 8
  %90 = call i32 @listening_ports_free(%struct.listen_port* %89)
  store i32 0, i32* %2, align 4
  br label %225

91:                                               ; preds = %78
  %92 = load %struct.listen_port*, %struct.listen_port** %5, align 8
  %93 = load %struct.daemon*, %struct.daemon** %3, align 8
  %94 = getelementptr inbounds %struct.daemon, %struct.daemon* %93, i32 0, i32 6
  %95 = load %struct.listen_port**, %struct.listen_port*** %94, align 8
  %96 = getelementptr inbounds %struct.listen_port*, %struct.listen_port** %95, i64 0
  store %struct.listen_port* %92, %struct.listen_port** %96, align 8
  %97 = load %struct.daemon*, %struct.daemon** %3, align 8
  %98 = getelementptr inbounds %struct.daemon, %struct.daemon* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %157

101:                                              ; preds = %91
  store i64 1, i64* %4, align 8
  br label %102

102:                                              ; preds = %153, %101
  %103 = load i64, i64* %4, align 8
  %104 = load %struct.daemon*, %struct.daemon** %3, align 8
  %105 = getelementptr inbounds %struct.daemon, %struct.daemon* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ult i64 %103, %106
  br i1 %107, label %108, label %156

108:                                              ; preds = %102
  %109 = load %struct.daemon*, %struct.daemon** %3, align 8
  %110 = getelementptr inbounds %struct.daemon, %struct.daemon* %109, i32 0, i32 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = load %struct.daemon*, %struct.daemon** %3, align 8
  %113 = getelementptr inbounds %struct.daemon, %struct.daemon* %112, i32 0, i32 1
  %114 = call i8* @listening_ports_open(%struct.TYPE_3__* %111, i32* %113)
  %115 = bitcast i8* %114 to %struct.listen_port*
  %116 = load %struct.daemon*, %struct.daemon** %3, align 8
  %117 = getelementptr inbounds %struct.daemon, %struct.daemon* %116, i32 0, i32 6
  %118 = load %struct.listen_port**, %struct.listen_port*** %117, align 8
  %119 = load i64, i64* %4, align 8
  %120 = getelementptr inbounds %struct.listen_port*, %struct.listen_port** %118, i64 %119
  store %struct.listen_port* %115, %struct.listen_port** %120, align 8
  %121 = icmp ne %struct.listen_port* %115, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %108
  %123 = load %struct.daemon*, %struct.daemon** %3, align 8
  %124 = getelementptr inbounds %struct.daemon, %struct.daemon* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %152, label %127

127:                                              ; preds = %122, %108
  store i64 0, i64* %4, align 8
  br label %128

128:                                              ; preds = %142, %127
  %129 = load i64, i64* %4, align 8
  %130 = load %struct.daemon*, %struct.daemon** %3, align 8
  %131 = getelementptr inbounds %struct.daemon, %struct.daemon* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ult i64 %129, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %128
  %135 = load %struct.daemon*, %struct.daemon** %3, align 8
  %136 = getelementptr inbounds %struct.daemon, %struct.daemon* %135, i32 0, i32 6
  %137 = load %struct.listen_port**, %struct.listen_port*** %136, align 8
  %138 = load i64, i64* %4, align 8
  %139 = getelementptr inbounds %struct.listen_port*, %struct.listen_port** %137, i64 %138
  %140 = load %struct.listen_port*, %struct.listen_port** %139, align 8
  %141 = call i32 @listening_ports_free(%struct.listen_port* %140)
  br label %142

142:                                              ; preds = %134
  %143 = load i64, i64* %4, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %4, align 8
  br label %128

145:                                              ; preds = %128
  %146 = load %struct.daemon*, %struct.daemon** %3, align 8
  %147 = getelementptr inbounds %struct.daemon, %struct.daemon* %146, i32 0, i32 6
  %148 = load %struct.listen_port**, %struct.listen_port*** %147, align 8
  %149 = call i32 @free(%struct.listen_port** %148)
  %150 = load %struct.daemon*, %struct.daemon** %3, align 8
  %151 = getelementptr inbounds %struct.daemon, %struct.daemon* %150, i32 0, i32 6
  store %struct.listen_port** null, %struct.listen_port*** %151, align 8
  store i32 0, i32* %2, align 4
  br label %225

152:                                              ; preds = %122
  br label %153

153:                                              ; preds = %152
  %154 = load i64, i64* %4, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %4, align 8
  br label %102

156:                                              ; preds = %102
  br label %157

157:                                              ; preds = %156, %91
  %158 = load %struct.daemon*, %struct.daemon** %3, align 8
  %159 = getelementptr inbounds %struct.daemon, %struct.daemon* %158, i32 0, i32 4
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.daemon*, %struct.daemon** %3, align 8
  %164 = getelementptr inbounds %struct.daemon, %struct.daemon* %163, i32 0, i32 0
  store i64 %162, i64* %164, align 8
  br label %165

165:                                              ; preds = %157, %1
  %166 = load %struct.daemon*, %struct.daemon** %3, align 8
  %167 = getelementptr inbounds %struct.daemon, %struct.daemon* %166, i32 0, i32 4
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %186, label %172

172:                                              ; preds = %165
  %173 = load %struct.daemon*, %struct.daemon** %3, align 8
  %174 = getelementptr inbounds %struct.daemon, %struct.daemon* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %172
  %178 = load %struct.daemon*, %struct.daemon** %3, align 8
  %179 = getelementptr inbounds %struct.daemon, %struct.daemon* %178, i32 0, i32 5
  %180 = load %struct.listen_port*, %struct.listen_port** %179, align 8
  %181 = call i32 @listening_ports_free(%struct.listen_port* %180)
  %182 = load %struct.daemon*, %struct.daemon** %3, align 8
  %183 = getelementptr inbounds %struct.daemon, %struct.daemon* %182, i32 0, i32 5
  store %struct.listen_port* null, %struct.listen_port** %183, align 8
  %184 = load %struct.daemon*, %struct.daemon** %3, align 8
  %185 = getelementptr inbounds %struct.daemon, %struct.daemon* %184, i32 0, i32 3
  store i64 0, i64* %185, align 8
  br label %186

186:                                              ; preds = %177, %172, %165
  %187 = load %struct.daemon*, %struct.daemon** %3, align 8
  %188 = getelementptr inbounds %struct.daemon, %struct.daemon* %187, i32 0, i32 4
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %224

193:                                              ; preds = %186
  %194 = load %struct.daemon*, %struct.daemon** %3, align 8
  %195 = getelementptr inbounds %struct.daemon, %struct.daemon* %194, i32 0, i32 4
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.daemon*, %struct.daemon** %3, align 8
  %200 = getelementptr inbounds %struct.daemon, %struct.daemon* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %198, %201
  br i1 %202, label %203, label %224

203:                                              ; preds = %193
  %204 = load %struct.daemon*, %struct.daemon** %3, align 8
  %205 = getelementptr inbounds %struct.daemon, %struct.daemon* %204, i32 0, i32 5
  %206 = load %struct.listen_port*, %struct.listen_port** %205, align 8
  %207 = call i32 @listening_ports_free(%struct.listen_port* %206)
  %208 = load %struct.daemon*, %struct.daemon** %3, align 8
  %209 = getelementptr inbounds %struct.daemon, %struct.daemon* %208, i32 0, i32 4
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %209, align 8
  %211 = call %struct.listen_port* @daemon_remote_open_ports(%struct.TYPE_3__* %210)
  %212 = load %struct.daemon*, %struct.daemon** %3, align 8
  %213 = getelementptr inbounds %struct.daemon, %struct.daemon* %212, i32 0, i32 5
  store %struct.listen_port* %211, %struct.listen_port** %213, align 8
  %214 = icmp ne %struct.listen_port* %211, null
  br i1 %214, label %216, label %215

215:                                              ; preds = %203
  store i32 0, i32* %2, align 4
  br label %225

216:                                              ; preds = %203
  %217 = load %struct.daemon*, %struct.daemon** %3, align 8
  %218 = getelementptr inbounds %struct.daemon, %struct.daemon* %217, i32 0, i32 4
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.daemon*, %struct.daemon** %3, align 8
  %223 = getelementptr inbounds %struct.daemon, %struct.daemon* %222, i32 0, i32 3
  store i64 %221, i64* %223, align 8
  br label %224

224:                                              ; preds = %216, %193, %186
  store i32 1, i32* %2, align 4
  br label %225

225:                                              ; preds = %224, %215, %145, %88, %59
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local i32 @log_assert(%struct.daemon*) #1

declare dso_local i32 @listening_ports_free(%struct.listen_port*) #1

declare dso_local i32 @free(%struct.listen_port**) #1

declare dso_local i8* @listening_ports_open(%struct.TYPE_3__*, i32*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local %struct.listen_port* @daemon_remote_open_ports(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
